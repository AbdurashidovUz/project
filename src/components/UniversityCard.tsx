import { Heart, MapPin, Calendar, DollarSign, Award } from 'lucide-react';
import { useState } from 'react';

export interface University {
  id: string;
  name: string;
  country: string;
  countryFlag: string;
  location: string;
  description: string;
  tuitionRange: string;
  ieltsRequirement: number;
  deadline: string;
  hasScholarship: boolean;
  image: string;
  urgency?: 'high' | 'medium' | 'low';
}

interface UniversityCardProps {
  university: University;
  onViewDetails: (university: University) => void;
  isSaved?: boolean;
  onToggleSave?: (id: string) => void;
}

export default function UniversityCard({
  university,
  onViewDetails,
  isSaved = false,
  onToggleSave,
}: UniversityCardProps) {
  const [saved, setSaved] = useState(isSaved);

  const handleSaveToggle = (e: React.MouseEvent) => {
    e.stopPropagation();
    setSaved(!saved);
    onToggleSave?.(university.id);
  };

  const getUrgencyColor = (urgency?: string) => {
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

  return (
    <div className="card group cursor-pointer" onClick={() => onViewDetails(university)}>
      <div className="relative">
        <div className="h-48 bg-gradient-to-br from-blue-50 to-teal-50 overflow-hidden">
          <img
            src={university.image}
            alt={university.name}
            className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
            onError={(e) => {
              e.currentTarget.src = 'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=400&h=400&fit=crop';
            }}
          />
        </div>
        <button
          onClick={handleSaveToggle}
          className="absolute top-4 right-4 p-2 bg-white rounded-full shadow-md hover:shadow-lg transition-all duration-200 z-10"
          aria-label={saved ? 'Unsave university' : 'Save university'}
        >
          <Heart
            size={20}
            className={`transition-colors ${saved ? 'fill-red-500 text-red-500' : 'text-gray-400'
              }`}
          />
        </button>
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
            <span className="mr-1">{university.countryFlag}</span>
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
              {university.tuitionRange}
            </span>
          </div>

          <div className="flex items-center justify-between">
            <div className="flex items-center space-x-2">
              <Award size={16} className="text-gray-400" />
              <span className="text-sm text-gray-600">IELTS</span>
            </div>
            <span className="text-sm font-semibold text-gray-800">
              {university.ieltsRequirement}+
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

        {university.hasScholarship && (
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
