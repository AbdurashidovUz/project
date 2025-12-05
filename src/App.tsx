import { useState } from 'react';
import Header from './components/Header';
import Hero from './components/Hero';
import FilterPanel from './components/FilterPanel';
import UniversityGrid from './components/UniversityGrid';
import UniversityModal from './components/UniversityModal';
import ProgramGrid from './components/ProgramGrid';
import ProgramModal from './components/ProgramModal';
import AIRecommendation from './components/AIRecommendation';
import Chatbot from './components/Chatbot';
import Footer from './components/Footer';
import { University } from './components/UniversityCard';
import { Program } from './data/mockPrograms';
import { mockUniversities } from './data/mockUniversities';
import { mockPrograms } from './data/mockPrograms';

interface FilterState {
  countries: string[];
  tuitionRange: [number, number];
  ieltsScore: number;
  hasScholarship: boolean;
  programLevel: string[];
  deadline: { start: string; end: string };
}

function App() {
  const [isFilterOpen, setIsFilterOpen] = useState(false);
  const [selectedUniversity, setSelectedUniversity] = useState<University | null>(null);
  const [selectedProgram, setSelectedProgram] = useState<Program | null>(null);
  const [searchQuery, setSearchQuery] = useState('');
  const [programSearchQuery, setProgramSearchQuery] = useState('');
  const [filters, setFilters] = useState<FilterState>({
    countries: [],
    tuitionRange: [0, 100000],
    ieltsScore: 0,
    hasScholarship: false,
    programLevel: [],
    deadline: { start: '', end: '' },
  });

  const filteredUniversities = mockUniversities.filter((uni) => {
    if (searchQuery) {
      const query = searchQuery.toLowerCase();
      const matchesSearch =
        uni.name.toLowerCase().includes(query) ||
        uni.country.toLowerCase().includes(query) ||
        uni.location.toLowerCase().includes(query);
      if (!matchesSearch) return false;
    }

    if (filters.countries.length > 0 && !filters.countries.includes(uni.country)) {
      return false;
    }

    if (filters.hasScholarship && !uni.hasScholarship) {
      return false;
    }

    if (filters.ieltsScore > 0 && uni.ieltsRequirement > filters.ieltsScore) {
      return false;
    }

    return true;
  });

  const filteredPrograms = mockPrograms.filter((program) => {
    if (programSearchQuery) {
      const query = programSearchQuery.toLowerCase();
      const matchesSearch =
        program.name.toLowerCase().includes(query) ||
        program.countries.some(country => country.toLowerCase().includes(query)) ||
        program.type.toLowerCase().includes(query);
      if (!matchesSearch) return false;
    }
    return true;
  });

  const handleSearch = (query: string) => {
    setSearchQuery(query);
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

  return (
    <div className="min-h-screen bg-gray-50">
      <Header />

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
                universities={filteredUniversities}
                onViewDetails={handleViewDetails}
                onToggleFilters={() => setIsFilterOpen(!isFilterOpen)}
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
                Explore prestigious scholarship programs from around the world, including Erasmus Mundus, Hungarikum, and more.
              </p>
            </div>
            <ProgramGrid
              programs={filteredPrograms}
              onViewDetails={handleViewProgramDetails}
            />
          </div>
        </section>

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
