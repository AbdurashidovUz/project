import { useState } from 'react';
import { ChevronLeft, ChevronRight, Filter, Loader2 } from 'lucide-react';
import UniversityCard from './UniversityCard';
import type { University } from '../lib/database.types';

interface UniversityGridProps {
  universities: University[];
  onViewDetails: (university: University) => void;
  onToggleFilters: () => void;
  savedUniversities: Set<string>;
  onToggleSave: (id: string) => void;
  compareList: string[];
  onToggleCompare: (id: string) => void;
  loading?: boolean;
  isShowingSavedOnly?: boolean;
  onClearSavedFilter?: () => void;
}

type SortOption = 'ranking' | 'tuition-low' | 'tuition-high' | 'deadline';

const SORT_OPTIONS: { value: SortOption; label: string }[] = [
  { value: 'ranking',      label: '🏆 Ranking' },
  { value: 'tuition-low',  label: '💰 Tuition ↑' },
  { value: 'tuition-high', label: '💰 Tuition ↓' },
  { value: 'deadline',     label: '📅 Deadline' },
];

function sortUniversities(list: University[], sortBy: SortOption): University[] {
  const copy = [...list];
  switch (sortBy) {
    case 'ranking':
      return copy.sort((a, b) => (a.ranking ?? 9999) - (b.ranking ?? 9999));
    case 'tuition-low':
      return copy.sort((a, b) => (a.tuition_min ?? 0) - (b.tuition_min ?? 0));
    case 'tuition-high':
      return copy.sort((a, b) => (b.tuition_max ?? 0) - (a.tuition_max ?? 0));
    case 'deadline':
      return copy.sort((a, b) =>
        new Date(a.deadline ?? '9999').getTime() - new Date(b.deadline ?? '9999').getTime()
      );
    default:
      return copy;
  }
}

export default function UniversityGrid({
  universities,
  onViewDetails,
  onToggleFilters,
  savedUniversities,
  onToggleSave,
  compareList,
  onToggleCompare,
  loading = false,
  isShowingSavedOnly = false,
  onClearSavedFilter,
}: UniversityGridProps) {
  const [currentPage, setCurrentPage] = useState(1);
  const [sortBy, setSortBy] = useState<SortOption>('ranking');

  const sorted = sortUniversities(universities, sortBy);

  const itemsPerPage = 9;
  const totalPages = Math.ceil(sorted.length / itemsPerPage);
  const startIndex = (currentPage - 1) * itemsPerPage;
  const endIndex = startIndex + itemsPerPage;
  const currentUniversities = sorted.slice(startIndex, endIndex);

  const handlePageChange = (page: number) => {
    setCurrentPage(page);
    window.scrollTo({ top: 400, behavior: 'smooth' });
  };

  const handleSortChange = (option: SortOption) => {
    setSortBy(option);
    setCurrentPage(1);
  };

  if (loading) {
    return (
      <div className="flex-1 p-8">
        <div className="text-center py-16">
          <Loader2 size={48} className="text-blue-600 animate-spin mx-auto mb-4" />
          <h3 className="text-xl font-semibold text-gray-800 mb-2">Loading universities...</h3>
          <p className="text-gray-600">Fetching the latest data</p>
        </div>
      </div>
    );
  }

  if (universities.length === 0) {
    return (
      <div className="flex-1 p-8">
        <div className="text-center py-16">
          <div className="text-6xl mb-4">🔍</div>
          <h3 className="text-2xl font-semibold text-gray-800 mb-2">No universities found</h3>
          <p className="text-gray-600">Try adjusting your filters or search criteria</p>
          {isShowingSavedOnly && (
            <button
              onClick={onClearSavedFilter}
              className="mt-4 px-4 py-2 bg-blue-100 text-blue-700 font-semibold rounded-lg hover:bg-blue-200 transition-colors"
            >
              Clear Saved Filter
            </button>
          )}
        </div>
      </div>
    );
  }

  return (
    <div className="flex-1 p-4 md:p-8">
      {/* Header */}
      <div className="mb-6 flex flex-col gap-4">
        <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3">
          <div>
            <h2 className="text-2xl font-bold text-gray-800 mb-1">
              {isShowingSavedOnly ? 'Saved Universities' : `${universities.length} Universities Found`}
            </h2>
            <div className="flex items-center gap-3 text-sm text-gray-600">
              <span>
                Showing {sorted.length > 0 ? startIndex + 1 : 0}–{Math.min(endIndex, sorted.length)} of{' '}
                {sorted.length}
              </span>
              {isShowingSavedOnly && (
                <button
                  onClick={onClearSavedFilter}
                  className="text-blue-600 hover:text-blue-800 underline font-medium"
                >
                  Clear filter
                </button>
              )}
            </div>
          </div>

          {/* Mobile filter toggle */}
          <button
            onClick={onToggleFilters}
            className="md:hidden btn-ghost flex items-center space-x-2"
          >
            <Filter size={18} />
            <span>Filters</span>
          </button>
        </div>

        {/* Sort pill buttons */}
        <div className="flex items-center gap-2 flex-wrap">
          <span className="text-xs font-semibold text-gray-400 uppercase tracking-widest mr-1">
            Sort by
          </span>
          {SORT_OPTIONS.map((opt) => (
            <button
              key={opt.value}
              onClick={() => handleSortChange(opt.value)}
              className={[
                'px-3.5 py-1.5 rounded-full text-sm font-medium border transition-all duration-200 select-none',
                sortBy === opt.value
                  ? 'bg-blue-600 text-white border-blue-600 shadow shadow-blue-200 scale-105'
                  : 'bg-white text-gray-600 border-gray-200 hover:border-blue-400 hover:text-blue-600 hover:bg-blue-50',
              ].join(' ')}
            >
              {opt.label}
            </button>
          ))}
        </div>
      </div>

      {compareList.length > 0 && (
        <div className="mb-4 p-3 bg-purple-50 border border-purple-200 rounded-lg text-sm text-purple-700">
          <span className="font-semibold">{compareList.length}/3</span> universities selected for
          comparison.{' '}
          <a href="#compare" className="underline font-semibold hover:text-purple-800">
            View comparison →
          </a>
        </div>
      )}

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-8">
        {currentUniversities.map((university) => (
          <UniversityCard
            key={university.id}
            university={university}
            onViewDetails={onViewDetails}
            isSaved={savedUniversities.has(university.id)}
            onToggleSave={onToggleSave}
            isInCompare={compareList.includes(university.id)}
            onToggleCompare={onToggleCompare}
            compareDisabled={compareList.length >= 3}
          />
        ))}
      </div>

      {totalPages > 1 && (
        <div className="flex items-center justify-center space-x-2">
          <button
            onClick={() => handlePageChange(currentPage - 1)}
            disabled={currentPage === 1}
            className="p-2 rounded-lg border border-gray-300 disabled:opacity-50 disabled:cursor-not-allowed hover:bg-gray-50 transition-colors"
            aria-label="Previous page"
          >
            <ChevronLeft size={20} />
          </button>

          <div className="flex items-center space-x-1">
            {Array.from({ length: totalPages }, (_, i) => i + 1).map((page) => {
              if (
                page === 1 ||
                page === totalPages ||
                (page >= currentPage - 1 && page <= currentPage + 1)
              ) {
                return (
                  <button
                    key={page}
                    onClick={() => handlePageChange(page)}
                    className={`w-10 h-10 rounded-lg font-medium transition-colors ${
                      currentPage === page
                        ? 'bg-blue-600 text-white'
                        : 'bg-white border border-gray-300 text-gray-700 hover:bg-gray-50'
                    }`}
                  >
                    {page}
                  </button>
                );
              } else if (page === currentPage - 2 || page === currentPage + 2) {
                return (
                  <span key={page} className="px-2 text-gray-400">
                    ...
                  </span>
                );
              }
              return null;
            })}
          </div>

          <button
            onClick={() => handlePageChange(currentPage + 1)}
            disabled={currentPage === totalPages}
            className="p-2 rounded-lg border border-gray-300 disabled:opacity-50 disabled:cursor-not-allowed hover:bg-gray-50 transition-colors"
            aria-label="Next page"
          >
            <ChevronRight size={20} />
          </button>
        </div>
      )}
    </div>
  );
}
