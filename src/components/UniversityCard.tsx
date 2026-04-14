import { Heart, MapPin, Calendar, DollarSign, Award, ArrowLeftRight } from 'lucide-react';
import type { University } from '../lib/database.types';
import { getUniversityImageUrl } from '../data/universityImages';

interface UniversityCardProps {
  university: University;
  onViewDetails: (university: University) => void;
  isSaved?: boolean;
  onToggleSave?: (id: string) => void;
  isInCompare?: boolean;
  onToggleCompare?: (id: string) => void;
  compareDisabled?: boolean;
}

export default function UniversityCard({
  university,
  onViewDetails,
  isSaved = false,
  onToggleSave,
  isInCompare = false,
  onToggleCompare,
  compareDisabled = false,
}: UniversityCardProps) {
  const handleSaveToggle = (e: React.MouseEvent) => {
    e.stopPropagation();
    onToggleSave?.(university.id);
  };

  const handleCompareToggle = (e: React.MouseEvent) => {
    e.stopPropagation();
    onToggleCompare?.(university.id);
  };

  const getUrgencyColor = (urgency?: string | null) => {
    switch (urgency) {
      case 'high':
        return 'bg-red-100 text-red-700 border-red-200';
      case 'medium':
        return 'bg-orange-100 text-orange-700 border-orange-200';
      case 'low':
        return 'bg-green-100 text-green-700 border-green-200';
      default:
        return 'bg-gray-100 text-gray-700 border-gray-200';
    }
  };

  // Use the smart helper: named → country-pool → generic-pool
  const imageUrl = getUniversityImageUrl(university.name, university.country);

  return (
    <div className="card group cursor-pointer" onClick={() => onViewDetails(university)}>
      <div className="relative">
        <div className="h-48 bg-gradient-to-br from-blue-50 to-teal-50 overflow-hidden">
          <img
            src={imageUrl}
            alt={university.name}
            className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
            onError={(e) => {
              e.currentTarget.onerror = null;
              e.currentTarget.src = 'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop';
            }}
          />
        </div>
        <div className="absolute top-4 right-4 flex space-x-2">
          {onToggleCompare && (
            <button
              onClick={handleCompareToggle}
              disabled={compareDisabled && !isInCompare}
              className={`p-2 rounded-full shadow-md hover:shadow-lg transition-all duration-200 z-10 ${
                isInCompare
                  ? 'bg-purple-500 text-white'
                  : compareDisabled
                  ? 'bg-white/50 text-gray-300 cursor-not-allowed'
                  : 'bg-white text-gray-400 hover:text-purple-500'
              }`}
              aria-label={isInCompare ? 'Remove from compare' : 'Add to compare'}
              title={isInCompare ? 'Remove from compare' : 'Add to compare'}
            >
              <ArrowLeftRight size={18} />
            </button>
          )}
          <button
            onClick={handleSaveToggle}
            className="p-2 bg-white rounded-full shadow-md hover:shadow-lg transition-all duration-200 z-10"
            aria-label={isSaved ? 'Unsave university' : 'Save university'}
          >
            <Heart
              size={20}
              className={`transition-colors ${
                isSaved ? 'fill-red-500 text-red-500' : 'text-gray-400'
              }`}
            />
          </button>
        </div>
      </div>

      <div className="p-5">
        <div className="flex items-start justify-between mb-3">
          <h3 className="text-xl font-semibold text-gray-800 group-hover:text-blue-600 transition-colors line-clamp-2">
            {university.name}
          </h3>
        </div>

        <div className="flex items-center space-x-2 mb-3">
          <MapPin size={16} className="text-gray-400" />
          <span className="text-sm text-gray-600">
            <span className="mr-1">{university.country_flag}</span>
            {university.location}, {university.country}
          </span>
        </div>

        <p className="text-sm text-gray-600 mb-4 line-clamp-2">{university.description}</p>

        <div className="space-y-2 mb-4">
          <div className="flex items-center justify-between">
            <div className="flex items-center space-x-2">
              <DollarSign size={16} className="text-gray-400" />
              <span className="text-sm text-gray-600">Tuition</span>
            </div>
            <span className="text-sm font-semibold text-gray-800">
              {university.tuition_range}
            </span>
          </div>

          <div className="flex items-center justify-between">
            <div className="flex items-center space-x-2">
              <Award size={16} className="text-gray-400" />
              <span className="text-sm text-gray-600">IELTS</span>
            </div>
            <span className="text-sm font-semibold text-gray-800">
              {university.ielts_requirement}+
            </span>
          </div>

          <div className="flex items-center justify-between">
            <div className="flex items-center space-x-2">
              <Calendar size={16} className="text-gray-400" />
              <span className="text-sm text-gray-600">Deadline</span>
            </div>
            <span
              className={`text-xs font-medium px-2 py-1 rounded-full border ${getUrgencyColor(
                university.urgency
              )}`}
            >
              {university.deadline}
            </span>
          </div>
        </div>

        {university.has_scholarship && (
          <div className="mb-4">
            <span className="badge-success">Scholarship Available</span>
          </div>
        )}

        <button
          onClick={(e) => {
            e.stopPropagation();
            onViewDetails(university);
          }}
          className="w-full btn-primary text-sm"
        >
          View Details
        </button>
      </div>
    </div>
  );
}
