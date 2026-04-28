import { useState, useEffect } from 'react';
import { Filter, X, ChevronDown, ChevronUp } from 'lucide-react';
import { allUniversities } from '../data/allUniversities';

interface FilterState {
  countries: string[];
  tuitionRange: [number, number];
  ieltsScore: number;
  hasScholarship: boolean;
  programLevel: string[];
  deadline: { start: string; end: string };
}

interface FilterPanelProps {
  isOpen: boolean;
  onClose: () => void;
  filters: FilterState;
  onFilterChange: (filters: FilterState) => void;
}

const countries = Array.from(
  new Map(
    allUniversities
      .filter((u) => u.country)
      .map((u) => [
        u.country,
        {
          code: u.country.substring(0, 2).toUpperCase(),
          name: u.country,
          flag: u.country_flag || '🌍',
        },
      ])
  ).values()
).sort((a, b) => a.name.localeCompare(b.name));

const MIN_IELTS = Math.min(
  ...allUniversities
    .map((u) => u.ielts_requirement)
    .filter((v): v is number => typeof v === 'number' && v > 0)
);

const programLevels = ['Bachelor', 'Master', 'PhD'];

export default function FilterPanel({
  isOpen,
  onClose,
  filters,
  onFilterChange,
}: FilterPanelProps) {
  const [localFilters, setLocalFilters] = useState<FilterState>(filters);

  useEffect(() => {
    setLocalFilters(filters);
  }, [filters]);

  const [expandedSections, setExpandedSections] = useState({
    country: true,
    tuition: true,
    ielts: true,
    scholarship: true,
    program: true,
    deadline: true,
  });

  const toggleSection = (section: keyof typeof expandedSections) => {
    setExpandedSections((prev) => ({
      ...prev,
      [section]: !prev[section],
    }));
  };

  const handleCountryToggle = (countryName: string) => {
    const newCountries = localFilters.countries.includes(countryName)
      ? localFilters.countries.filter((c) => c !== countryName)
      : [...localFilters.countries, countryName];
    setLocalFilters({ ...localFilters, countries: newCountries });
  };

  const handleProgramLevelToggle = (level: string) => {
    const newLevels = localFilters.programLevel.includes(level)
      ? localFilters.programLevel.filter((l) => l !== level)
      : [...localFilters.programLevel, level];
    setLocalFilters({ ...localFilters, programLevel: newLevels });
  };

  const handleReset = () => {
    const emptyFilters = {
      countries: [],
      tuitionRange: [0, 100000] as [number, number],
      ieltsScore: MIN_IELTS,
      hasScholarship: false,
      programLevel: [],
      deadline: { start: '', end: '' },
    };
    setLocalFilters(emptyFilters);
    onFilterChange(emptyFilters);
  };

  const filterContent = (
    <div className="h-full flex flex-col">
      <div className="flex items-center justify-between p-6 border-b border-gray-200">
        <div className="flex items-center space-x-2">
          <Filter className="text-blue-600" size={24} />
          <h2 className="text-xl font-semibold text-gray-800">Filters</h2>
        </div>
        <button
          onClick={onClose}
          className="md:hidden p-2 hover:bg-gray-100 rounded-lg transition-colors"
          aria-label="Close filters"
        >
          <X size={20} />
        </button>
      </div>

      <div className="flex-1 overflow-y-auto p-6 space-y-6">
        <div className="space-y-4">
          <button
            onClick={() => toggleSection('country')}
            className="flex items-center justify-between w-full text-left"
          >
            <h3 className="font-semibold text-gray-800">Country</h3>
            {expandedSections.country ? (
              <ChevronUp size={20} className="text-gray-500" />
            ) : (
              <ChevronDown size={20} className="text-gray-500" />
            )}
          </button>
          {expandedSections.country && (
            <div className="space-y-2">
              {countries.map((country) => (
                <label
                  key={country.code}
                  className="flex items-center space-x-3 p-2 rounded-lg hover:bg-gray-50 cursor-pointer transition-colors"
                >
                  <input
                    type="checkbox"
                    checked={localFilters.countries.includes(country.name)}
                    onChange={() => handleCountryToggle(country.name)}
                    className="w-4 h-4 text-blue-600 border-gray-300 rounded focus:ring-blue-500"
                  />
                  <span className="text-xl">{country.flag}</span>
                  <span className="text-sm text-gray-700">{country.name}</span>
                </label>
              ))}
            </div>
          )}
        </div>

        <div className="pt-4 border-t border-gray-200">
          <button
            onClick={() => toggleSection('tuition')}
            className="flex items-center justify-between w-full text-left mb-4"
          >
            <h3 className="font-semibold text-gray-800">Tuition Fee Range</h3>
            {expandedSections.tuition ? (
              <ChevronUp size={20} className="text-gray-500" />
            ) : (
              <ChevronDown size={20} className="text-gray-500" />
            )}
          </button>
          {expandedSections.tuition && (
            <div className="space-y-4">
              <div className="flex items-center justify-between text-sm text-gray-600">
                <span>${localFilters.tuitionRange[0].toLocaleString()}</span>
                <span>${localFilters.tuitionRange[1].toLocaleString()}</span>
              </div>
              <input
                type="range"
                min="0"
                max="100000"
                step="5000"
                value={localFilters.tuitionRange[1]}
                onChange={(e) =>
                  setLocalFilters({
                    ...localFilters,
                    tuitionRange: [localFilters.tuitionRange[0], parseInt(e.target.value)],
                  })
                }
                className="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointer accent-blue-600"
              />
            </div>
          )}
        </div>

        <div className="pt-4 border-t border-gray-200">
          <button
            onClick={() => toggleSection('ielts')}
            className="flex items-center justify-between w-full text-left mb-4"
          >
            <h3 className="font-semibold text-gray-800">IELTS Score</h3>
            {expandedSections.ielts ? (
              <ChevronUp size={20} className="text-gray-500" />
            ) : (
              <ChevronDown size={20} className="text-gray-500" />
            )}
          </button>
          {expandedSections.ielts && (
            <div className="flex items-center space-x-4">
              <button
                onClick={() =>
                  setLocalFilters({
                    ...localFilters,
                    ieltsScore: Math.max(MIN_IELTS, localFilters.ieltsScore - 0.5),
                  })
                }
                className="w-10 h-10 bg-gray-100 hover:bg-gray-200 rounded-lg flex items-center justify-center font-semibold text-gray-700 transition-colors"
              >
                -
              </button>
              <div className="flex-1 text-center">
                <div className="text-2xl font-bold text-blue-600">
                  {localFilters.ieltsScore.toFixed(1)}
                </div>
                <div className="text-xs text-gray-500">out of 9.0</div>
              </div>
              <button
                onClick={() =>
                  setLocalFilters({
                    ...localFilters,
                    ieltsScore: Math.min(9, localFilters.ieltsScore + 0.5),
                  })
                }
                className="w-10 h-10 bg-gray-100 hover:bg-gray-200 rounded-lg flex items-center justify-center font-semibold text-gray-700 transition-colors"
              >
                +
              </button>
            </div>
          )}
        </div>

        <div className="pt-4 border-t border-gray-200">
          <button
            onClick={() => toggleSection('scholarship')}
            className="flex items-center justify-between w-full text-left mb-4"
          >
            <h3 className="font-semibold text-gray-800">Scholarship Available</h3>
            {expandedSections.scholarship ? (
              <ChevronUp size={20} className="text-gray-500" />
            ) : (
              <ChevronDown size={20} className="text-gray-500" />
            )}
          </button>
          {expandedSections.scholarship && (
            <label className="flex items-center justify-between p-3 bg-gray-50 rounded-lg cursor-pointer">
              <span className="text-sm text-gray-700">Only show universities with scholarships</span>
              <div
                className={`relative w-12 h-6 rounded-full transition-colors ${localFilters.hasScholarship ? 'bg-blue-600' : 'bg-gray-300'
                  }`}
                onClick={() =>
                  setLocalFilters({ ...localFilters, hasScholarship: !localFilters.hasScholarship })
                }
              >
                <div
                  className={`absolute top-1 left-1 w-4 h-4 bg-white rounded-full transition-transform ${localFilters.hasScholarship ? 'transform translate-x-6' : ''
                    }`}
                />
              </div>
            </label>
          )}
        </div>

        <div className="pt-4 border-t border-gray-200">
          <button
            onClick={() => toggleSection('program')}
            className="flex items-center justify-between w-full text-left mb-4"
          >
            <h3 className="font-semibold text-gray-800">Program Level</h3>
            {expandedSections.program ? (
              <ChevronUp size={20} className="text-gray-500" />
            ) : (
              <ChevronDown size={20} className="text-gray-500" />
            )}
          </button>
          {expandedSections.program && (
            <div className="space-y-2">
              {programLevels.map((level) => (
                <label
                  key={level}
                  className="flex items-center space-x-3 p-2 rounded-lg hover:bg-gray-50 cursor-pointer transition-colors"
                >
                  <input
                    type="checkbox"
                    checked={localFilters.programLevel.includes(level)}
                    onChange={() => handleProgramLevelToggle(level)}
                    className="w-4 h-4 text-blue-600 border-gray-300 rounded focus:ring-blue-500"
                  />
                  <span className="text-sm text-gray-700">{level}</span>
                </label>
              ))}
            </div>
          )}
        </div>
      </div>

      <div className="p-6 border-t border-gray-200 space-y-3">
        <button onClick={() => { onFilterChange(localFilters); onClose(); }} className="w-full btn-primary">Apply Filters</button>
        <button onClick={handleReset} className="w-full btn-ghost">
          Reset All
        </button>
      </div>
    </div>
  );

  return (
    <>
      {isOpen && (
        <div
          className="fixed inset-0 bg-black/50 z-40 md:hidden"
          onClick={onClose}
        />
      )}

      <aside
        className={`
        fixed md:sticky top-16 md:top-20 left-0 h-[calc(100vh-4rem)] md:h-[calc(100vh-5rem)] bg-white z-40
        transition-transform duration-300 ease-in-out
        w-80 md:w-80 shadow-xl md:shadow-none
        ${isOpen ? 'translate-x-0' : '-translate-x-full md:translate-x-0'}
      `}
      >
        {filterContent}
      </aside>
    </>
  );
}
