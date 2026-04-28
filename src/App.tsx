import { useState, useEffect, useCallback } from 'react';
import Header from './components/Header';
import Hero from './components/Hero';
import FilterPanel from './components/FilterPanel';
import UniversityGrid from './components/UniversityGrid';
import UniversityModal from './components/UniversityModal';
import ProgramGrid from './components/ProgramGrid';
import ProgramModal from './components/ProgramModal';
import AIRecommendation from './components/AIRecommendation';
import CompareUniversities from './components/CompareUniversities';
import Chatbot from './components/Chatbot';
import Footer from './components/Footer';
import { useAuth } from './contexts/AuthContext';
import { fetchUniversities, fetchPrograms, getSavedUniversities, saveUniversity, unsaveUniversity } from './lib/api';
import { allUniversities } from './data/allUniversities';
import { mockPrograms, Program } from './data/mockPrograms';
import type { University } from './lib/database.types';

const MIN_IELTS = Math.min(
  ...allUniversities
    .map((u) => u.ielts_requirement)
    .filter((v): v is number => typeof v === 'number' && v > 0)
);

interface FilterState {
  countries: string[];
  tuitionRange: [number, number];
  ieltsScore: number;
  hasScholarship: boolean;
  programLevel: string[];
  deadline: { start: string; end: string };
}

function App() {
  const { user } = useAuth();
  const [isFilterOpen, setIsFilterOpen] = useState(false);
  const [selectedUniversity, setSelectedUniversity] = useState<University | null>(null);
  const [selectedProgram, setSelectedProgram] = useState<Program | null>(null);
  const [searchQuery, setSearchQuery] = useState('');
  const [programSearchQuery, setProgramSearchQuery] = useState('');
  const [universities, setUniversities] = useState<University[]>([]);
  const [programs, setPrograms] = useState<Program[]>([]);
  const [savedUniversityIds, setSavedUniversityIds] = useState<Set<string>>(new Set());
  const [savedProgramIds, setSavedProgramIds] = useState<Set<string>>(new Set());
  const [compareList, setCompareList] = useState<string[]>([]);
  const [loading, setLoading] = useState(true);
  const [filters, setFilters] = useState<FilterState>({
    countries: [],
    tuitionRange: [0, 100000],
    ieltsScore: MIN_IELTS,
    hasScholarship: false,
    programLevel: [],
    deadline: { start: '', end: '' },
  });

  const [showSavedOnly, setShowSavedOnly] = useState(false);

  // Load universities from Supabase (or fall back to mock data)
  const loadUniversities = useCallback(async () => {
    setLoading(true);
    try {
      const data = await fetchUniversities({
        countries: filters.countries,
        tuitionRange: filters.tuitionRange,
        ieltsScore: filters.ieltsScore > MIN_IELTS ? filters.ieltsScore : undefined,
        hasScholarship: filters.hasScholarship,
      });

      let finalSet = data.length > 0 ? data.map(dbUni => {
        const localUni = allUniversities.find(u => u.name === dbUni.name);
        return localUni ? { ...dbUni, description: localUni.description } : dbUni;
      }) : allUniversities;

      if (data.length === 0) {
        if (filters.countries.length > 0) {
          finalSet = finalSet.filter((u) => filters.countries.includes(u.country));
        }
        if (filters.hasScholarship) {
          finalSet = finalSet.filter((u) => u.has_scholarship);
        }
        if (filters.ieltsScore > MIN_IELTS) {
          finalSet = finalSet.filter((u) => (u.ielts_requirement ?? 99) <= filters.ieltsScore);
        }
        if (filters.tuitionRange[0] > 0 || filters.tuitionRange[1] < 100000) {
          finalSet = finalSet.filter((u) =>
            (u.tuition_min ?? 0) >= filters.tuitionRange[0] &&
            (u.tuition_max ?? 0) <= filters.tuitionRange[1]
          );
        }
      }

      if (searchQuery.trim()) {
        const Fuse = (await import('fuse.js')).default;
        const fuse = new Fuse(finalSet, {
          keys: [
            { name: 'name', weight: 1.0 },
            { name: 'country', weight: 0.7 },
            { name: 'location', weight: 0.5 },
            { name: 'description', weight: 0.3 }
          ],
          threshold: 0.35,
          distance: 100,
          ignoreLocation: true
        });
        finalSet = fuse.search(searchQuery).map(result => result.item);
      }

      setUniversities(finalSet);
    } catch (error) {
      console.error('Error loading universities:', error);
      setUniversities(allUniversities);
    }
    setLoading(false);
  }, [searchQuery, filters]);

  // Load programs with fuzzy search
  const loadPrograms = useCallback(async () => {
    try {
      const q = searchQuery || programSearchQuery;
      const data = await fetchPrograms(undefined);
      
      let finalSet = data.length > 0 ? data.map(p => ({
        id: p.id,
        name: p.name,
        type: p.type,
        description: p.description,
        countries: p.countries,
        countryFlags: p.country_flags,
        fundingAmount: p.funding_amount,
        programLevel: p.program_level,
        duration: p.duration,
        fieldsOfStudy: p.fields_of_study,
        eligibility: p.eligibility,
        deadline: p.deadline,
        urgency: p.urgency as 'high' | 'medium' | 'low' | undefined,
        benefits: p.benefits,
        applicationProcess: p.application_process,
        website: p.website,
        image: p.image_url,
        hasFullFunding: p.has_full_funding,
      })) : mockPrograms;

      if (q.trim()) {
        const Fuse = (await import('fuse.js')).default;
        const fuse = new Fuse(finalSet, {
          keys: ['name', 'description', 'countries', 'fieldsOfStudy'],
          threshold: 0.3
        });
        finalSet = fuse.search(q).map(result => result.item);
      }
      
      setPrograms(finalSet);
    } catch (error) {
      console.error('Error loading programs:', error);
      setPrograms(mockPrograms);
    }
  }, [searchQuery, programSearchQuery]);

  // Load saved items
  const loadSavedItems = useCallback(async () => {
    // 1. Universities
    if (user) {
      const saved = await getSavedUniversities(user.id);
      setSavedUniversityIds(new Set(saved));
    } else {
      try {
        const localSaved = localStorage.getItem('saved_universities');
        if (localSaved) {
          setSavedUniversityIds(new Set(JSON.parse(localSaved)));
        }
      } catch (e) {
        console.warn('Could not load saved universities from local storage');
      }
    }

    // 2. Programs
    try {
      const localSavedPrograms = localStorage.getItem('saved_programs');
      if (localSavedPrograms) {
        setSavedProgramIds(new Set(JSON.parse(localSavedPrograms)));
      }
    } catch (e) {
      console.warn('Could not load saved programs from local storage');
    }
  }, [user]);

  useEffect(() => {
    loadUniversities();
  }, [loadUniversities]);

  useEffect(() => {
    loadPrograms();
  }, [loadPrograms]);

  useEffect(() => {
    loadSavedItems();
  }, [loadSavedItems]);

  const handleSearch = (query: string) => {
    setSearchQuery(query);
    const universitiesSection = document.getElementById('universities');
    if (universitiesSection) {
      universitiesSection.scrollIntoView({ behavior: 'smooth' });
    }
  };

  const handleShowSaved = () => {
    setShowSavedOnly(true);
    const universitiesSection = document.getElementById('universities');
    if (universitiesSection) {
      universitiesSection.scrollIntoView({ behavior: 'smooth' });
    }
  };

  const handleToggleSaveUniversity = async (universityId: string) => {
    if (!user) {
      setSavedUniversityIds((prev) => {
        const newSet = new Set(prev);
        if (newSet.has(universityId)) {
          newSet.delete(universityId);
        } else {
          newSet.add(universityId);
        }
        localStorage.setItem('saved_universities', JSON.stringify(Array.from(newSet)));
        return newSet;
      });
      return;
    }

    const isSaved = savedUniversityIds.has(universityId);
    if (isSaved) {
      const success = await unsaveUniversity(user.id, universityId);
      if (success) {
        setSavedUniversityIds((prev) => {
          const newSet = new Set(prev);
          newSet.delete(universityId);
          return newSet;
        });
      }
    } else {
      const success = await saveUniversity(user.id, universityId);
      if (success) {
        setSavedUniversityIds((prev) => new Set(prev).add(universityId));
      }
    }
  };

  const handleToggleSaveProgram = (programId: string) => {
    setSavedProgramIds((prev) => {
      const newSet = new Set(prev);
      if (newSet.has(programId)) {
        newSet.delete(programId);
      } else {
        newSet.add(programId);
      }
      localStorage.setItem('saved_programs', JSON.stringify(Array.from(newSet)));
      return newSet;
    });
  };

  const handleToggleCompare = (universityId: string) => {
    setCompareList((prev) => {
      if (prev.includes(universityId)) {
        return prev.filter((id) => id !== universityId);
      }
      if (prev.length >= 3) return prev;
      return [...prev, universityId];
    });
  };

  const handleClearCompare = () => {
    setCompareList([]);
  };

  const handleHomeClick = () => {
    setSearchQuery('');
    setFilters({
      countries: [],
      tuitionRange: [0, 100000],
      ieltsScore: MIN_IELTS,
      hasScholarship: false,
      programLevel: [],
      deadline: { start: '', end: '' },
    });
    setShowSavedOnly(false);
    setProgramSearchQuery('');
    window.scrollTo({ top: 0, behavior: 'smooth' });
  };

  const displayedUniversities = showSavedOnly
    ? universities.filter((u) => savedUniversityIds.has(u.id))
    : universities;

  return (
    <div className="min-h-screen bg-gray-50">
      <Header onShowSaved={handleShowSaved} onHomeClick={handleHomeClick} />

      <main>
        <Hero onSearch={handleSearch} />

        <section id="universities" className="py-16">
          <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div className="flex gap-6">
              <FilterPanel
                isOpen={isFilterOpen}
                onClose={() => setIsFilterOpen(false)}
                filters={filters}
                onFilterChange={setFilters}
              />

              <UniversityGrid
                universities={displayedUniversities}
                onViewDetails={(u) => setSelectedUniversity(u)}
                onToggleFilters={() => setIsFilterOpen(!isFilterOpen)}
                savedUniversities={savedUniversityIds}
                onToggleSave={handleToggleSaveUniversity}
                compareList={compareList}
                onToggleCompare={handleToggleCompare}
                loading={loading}
                isShowingSavedOnly={showSavedOnly}
                onClearSavedFilter={() => setShowSavedOnly(false)}
              />
            </div>
          </div>
        </section>

        <section id="programs" className="py-16 bg-white">
          <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div className="text-center mb-12">
              <h2 className="text-3xl md:text-4xl font-bold text-gray-800 mb-4">
                Special Scholarship Programs
              </h2>
              <p className="text-lg text-gray-600 max-w-3xl mx-auto">
                Explore prestigious scholarship programs from around the world, including Erasmus
                Mundus, Hungarikum, and more.
              </p>
            </div>
            <ProgramGrid
              programs={programs}
              onViewDetails={(p) => setSelectedProgram(p)}
              savedPrograms={savedProgramIds}
              onToggleSave={handleToggleSaveProgram}
            />
          </div>
        </section>

        <CompareUniversities
          universities={universities}
          compareList={compareList}
          onRemoveFromCompare={(id) =>
            setCompareList((prev) => prev.filter((i) => i !== id))
          }
          onClearCompare={handleClearCompare}
        />

        <AIRecommendation />
      </main>

      <Footer />

      <UniversityModal
        university={selectedUniversity}
        isOpen={!!selectedUniversity}
        onClose={() => setSelectedUniversity(null)}
      />

      <ProgramModal
        program={selectedProgram}
        isOpen={!!selectedProgram}
        onClose={() => setSelectedProgram(null)}
      />

      <Chatbot />
    </div>
  );
}

export default App;
