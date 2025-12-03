import { useState } from 'react';
import { ChevronLeft, ChevronRight, Filter } from 'lucide-react';
import UniversityCard, { University } from './UniversityCard';

interface UniversityGridProps {
  universities: University[];
  onViewDetails: (university: University) => void;
  onToggleFilters: () => void;
}

export default function UniversityGrid({
  universities,
  onViewDetails,
  onToggleFilters,
}: UniversityGridProps) {
  const [currentPage, setCurrentPage] = useState(1);
  const [sortBy, setSortBy] = useState('relevance');
  const [savedUniversities, setSavedUniversities] = useState<Set<string>>(new Set());

  const itemsPerPage = 9;
  const totalPages = Math.ceil(universities.length / itemsPerPage);
  const startIndex = (currentPage - 1) * itemsPerPage;
  const endIndex = startIndex + itemsPerPage;
  const currentUniversities = universities.slice(startIndex, endIndex);

  const handleToggleSave = (id: string) => {
    setSavedUniversities((prev) => {
      const newSet = new Set(prev);
      if (newSet.has(id)) {
        newSet.delete(id);
      } else {
        newSet.add(id);
      }
      return newSet;
    });
  };

  const handlePageChange = (page: number) => {
    setCurrentPage(page);
    window.scrollTo({ top: 400, behavior: 'smooth' });
  };

  if (universities.length === 0) {
    return (
      <div className="flex-1 p-8">
        <div className="text-center py-16">
          <div className="text-6xl mb-4">🔍</div>
          <h3 className="text-2xl font-semibold text-gray-800 mb-2">No universities found</h3>
          <p className="text-gray-600">Try adjusting your filters or search criteria</p>
        </div>
      </div>
    );
  }

  return (
    <div className="flex-1 p-4 md:p-8">
      <div className="mb-6 flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
        <div>
          <h2 className="text-2xl font-bold text-gray-800 mb-1">
            {universities.length} Universities Found
          </h2>
          <p className="text-sm text-gray-600">
            Showing {startIndex + 1}-{Math.min(endIndex, universities.length)} of{' '}
            {universities.length}
          </p>
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

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-8">
        {currentUniversities.map((university) => (
          <UniversityCard
            key={university.id}
            university={university}
            onViewDetails={onViewDetails}
            isSaved={savedUniversities.has(university.id)}
            onToggleSave={handleToggleSave}
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
