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
import { mockUniversities, type MockUniversity } from './data/mockUniversities';
import { mockPrograms, Program } from './data/mockPrograms';
import type { University } from './lib/database.types';

interface FilterState {
  countries: string[];
  tuitionRange: [number, number];
  ieltsScore: number;
  hasScholarship: boolean;
  programLevel: string[];
  deadline: { start: string; end: string };
}

// Adapter: convert mock university to database type
function adaptMockUniversity(mock: MockUniversity): University {
  return {
    id: mock.id,
    name: mock.name,
    country: mock.country,
    country_flag: mock.countryFlag,
    location: mock.location,
    description: mock.description,
    tuition_range: mock.tuitionRange,
    ielts_requirement: mock.ieltsRequirement,
    deadline: mock.deadline,
    has_scholarship: mock.hasScholarship,
    image_url: mock.image,
    urgency: mock.urgency || null,
    ranking: mock.ranking ?? null,
    acceptance_rate: mock.acceptanceRate ?? null,
    student_population: mock.studentPopulation ?? null,
    international_students_pct: mock.internationalStudentsPct ?? null,
    programs_offered: mock.programsOffered ?? null,
    website: mock.website ?? null,
    admission_url: mock.admissionUrl ?? null,
    tuition_min: mock.tuitionMin ?? null,
    tuition_max: mock.tuitionMax ?? null,
    created_at: new Date().toISOString(),
  };
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
  const [compareList, setCompareList] = useState<string[]>([]);
  const [loading, setLoading] = useState(true);
  const [filters, setFilters] = useState<FilterState>({
    countries: [],
    tuitionRange: [0, 100000],
    ieltsScore: 0,
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
        ieltsScore: filters.ieltsScore,
        hasScholarship: filters.hasScholarship,
        searchQuery: searchQuery || undefined,
      });

      if (data.length > 0) {
        setUniversities(data);
      } else {
        // Fallback to mock data with client-side filtering
        let filtered = mockUniversities.map(adaptMockUniversity);

        if (searchQuery) {
          const q = searchQuery.toLowerCase();
          filtered = filtered.filter(
            (u) =>
              u.name.toLowerCase().includes(q) ||
              u.country.toLowerCase().includes(q) ||
              u.location.toLowerCase().includes(q)
          );
        }

        if (filters.countries.length > 0) {
          filtered = filtered.filter((u) => filters.countries.includes(u.country));
        }

        if (filters.hasScholarship) {
          filtered = filtered.filter((u) => u.has_scholarship);
        }

        if (filters.ieltsScore > 0) {
          filtered = filtered.filter((u) => u.ielts_requirement <= filters.ieltsScore);
        }

        setUniversities(filtered);
      }
    } catch (error) {
      console.error('Error loading universities:', error);
      setUniversities(mockUniversities.map(adaptMockUniversity));
    }
    setLoading(false);
  }, [searchQuery, filters]);

  // Load programs from Supabase (or fall back to mock data)
  const loadPrograms = useCallback(async () => {
    try {
      const data = await fetchPrograms(programSearchQuery || undefined);
      if (data.length > 0) {
        // Adapt Supabase program data to match the Program interface
        setPrograms(
          data.map((p) => ({
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
          }))
        );
      } else {
        // Fallback
        let filtered = mockPrograms;
        if (programSearchQuery) {
          const q = programSearchQuery.toLowerCase();
          filtered = filtered.filter(
            (p) =>
              p.name.toLowerCase().includes(q) ||
              p.countries.some((c) => c.toLowerCase().includes(q)) ||
              p.type.toLowerCase().includes(q)
          );
        }
        setPrograms(filtered);
      }
    } catch (error) {
      console.error('Error loading programs:', error);
      setPrograms(mockPrograms);
    }
  }, [programSearchQuery]);

  // Load saved universities for logged-in user or from localStorage if offline/guest
  const loadSavedUniversities = useCallback(async () => {
    if (user) {
      const saved = await getSavedUniversities(user.id);
      setSavedUniversityIds(new Set(saved));
    } else {
      try {
        const localSaved = localStorage.getItem('saved_universities');
        if (localSaved) {
          setSavedUniversityIds(new Set(JSON.parse(localSaved)));
          return;
        }
      } catch (e) {
        console.warn('Could not load saved universities from local storage');
      }
      setSavedUniversityIds(new Set());
    }
  }, [user]);

  useEffect(() => {
    loadUniversities();
  }, [loadUniversities]);

  useEffect(() => {
    loadPrograms();
  }, [loadPrograms]);

  useEffect(() => {
    loadSavedUniversities();
  }, [loadSavedUniversities]);

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

  const handleViewDetails = (university: University) => {
    setSelectedUniversity(university);
  };

  const handleCloseModal = () => {
    setSelectedUniversity(null);
  };

  const handleViewProgramDetails = (program: Program) => {
    setSelectedProgram(program);
  };

  const handleCloseProgramModal = () => {
    setSelectedProgram(null);
  };

  const handleToggleSave = async (universityId: string) => {
    if (!user) {
      // Offline/Guest fallback: save to localStorage
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
      ieltsScore: 0,
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
                onViewDetails={handleViewDetails}
                onToggleFilters={() => setIsFilterOpen(!isFilterOpen)}
                savedUniversities={savedUniversityIds}
                onToggleSave={handleToggleSave}
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
              onViewDetails={handleViewProgramDetails}
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
        onClose={handleCloseModal}
      />

      <ProgramModal
        program={selectedProgram}
        isOpen={!!selectedProgram}
        onClose={handleCloseProgramModal}
      />

      <Chatbot />
    </div>
  );
}

export default App;
