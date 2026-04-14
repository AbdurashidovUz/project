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
  const [sortBy, setSortBy] = useState('relevance');

  const itemsPerPage = 9;
  const totalPages = Math.ceil(universities.length / itemsPerPage);
  const startIndex = (currentPage - 1) * itemsPerPage;
  const endIndex = startIndex + itemsPerPage;
  const currentUniversities = universities.slice(startIndex, endIndex);

  const handlePageChange = (page: number) => {
    setCurrentPage(page);
    window.scrollTo({ top: 400, behavior: 'smooth' });
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
      <div className="mb-6 flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
        <div>
          <h2 className="text-2xl font-bold text-gray-800 mb-1">
            {isShowingSavedOnly ? 'Saved Universities' : `${universities.length} Universities Found`}
          </h2>
          <div className="flex items-center gap-3 text-sm text-gray-600">
            <span>
              Showing {universities.length > 0 ? startIndex + 1 : 0}-{Math.min(endIndex, universities.length)} of{' '}
              {universities.length}
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

        <div className="flex items-center gap-3 w-full sm:w-auto">
          <button
            onClick={onToggleFilters}
            className="md:hidden btn-ghost flex items-center space-x-2 flex-1 sm:flex-none"
          >
            <Filter size={18} />
            <span>Filters</span>
          </button>

          <div className="flex items-center space-x-2 flex-1 sm:flex-none">
            <label htmlFor="sort" className="text-sm text-gray-600 whitespace-nowrap">
              Sort by:
            </label>
            <select
              id="sort"
              value={sortBy}
              onChange={(e) => setSortBy(e.target.value)}
              className="input-field py-2 text-sm"
            >
              <option value="relevance">Relevance</option>
              <option value="tuition-low">Tuition (Low to High)</option>
              <option value="tuition-high">Tuition (High to Low)</option>
              <option value="deadline">Application Deadline</option>
              <option value="ranking">Ranking</option>
            </select>
          </div>
        </div>
      </div>

      {compareList.length > 0 && (
        <div className="mb-4 p-3 bg-purple-50 border border-purple-200 rounded-lg text-sm text-purple-700">
          <span className="font-semibold">{compareList.length}/3</span> universities selected for comparison.{' '}
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
