import { X, ArrowLeftRight, DollarSign, Award, Calendar, MapPin, Trophy, Users, GraduationCap } from 'lucide-react';
import type { University } from '../lib/database.types';

interface CompareUniversitiesProps {
  universities: University[];
  compareList: string[];
  onRemoveFromCompare: (id: string) => void;
  onClearCompare: () => void;
}

export default function CompareUniversities({
  universities,
  compareList,
  onRemoveFromCompare,
  onClearCompare,
}: CompareUniversitiesProps) {
  const compareUniversities = universities.filter((u) => compareList.includes(u.id));

  if (compareUniversities.length === 0) {
    return (
      <section id="compare" className="py-16 bg-gradient-to-br from-gray-50 to-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-8">
            <div className="inline-flex items-center justify-center w-16 h-16 bg-gradient-to-br from-purple-600 to-pink-600 rounded-2xl mb-4">
              <ArrowLeftRight className="text-white" size={32} />
            </div>
            <h2 className="text-3xl md:text-4xl font-bold text-gray-800 mb-4">
              Compare Universities
            </h2>
            <p className="text-lg text-gray-600 max-w-2xl mx-auto">
              Select up to 3 universities from the list above to compare them side-by-side
            </p>
          </div>
          <div className="text-center py-12 bg-white rounded-2xl border-2 border-dashed border-gray-300">
            <ArrowLeftRight size={48} className="text-gray-300 mx-auto mb-4" />
            <p className="text-gray-500 text-lg">
              Click the "Compare" button on university cards to add them here
            </p>
          </div>
        </div>
      </section>
    );
  }

  const metrics = [
    {
      label: 'Location',
      icon: MapPin,
      getValue: (u: University) => `${u.country_flag} ${u.location}, ${u.country}`,
    },
    {
      label: 'Tuition Range',
      icon: DollarSign,
      getValue: (u: University) => u.tuition_range,
    },
    {
      label: 'IELTS Requirement',
      icon: Award,
      getValue: (u: University) => `${u.ielts_requirement}+`,
      getNumeric: (u: University) => u.ielts_requirement,
    },
    {
      label: 'Application Deadline',
      icon: Calendar,
      getValue: (u: University) => u.deadline,
    },
    {
      label: 'World Ranking',
      icon: Trophy,
      getValue: (u: University) => u.ranking ? `#${u.ranking}` : 'N/A',
      getNumeric: (u: University) => u.ranking || 999,
      lowerIsBetter: true,
    },
    {
      label: 'Acceptance Rate',
      icon: Users,
      getValue: (u: University) => u.acceptance_rate ? `${u.acceptance_rate}%` : 'N/A',
      getNumeric: (u: University) => u.acceptance_rate || 0,
    },
    {
      label: 'Student Population',
      icon: Users,
      getValue: (u: University) =>
        u.student_population ? u.student_population.toLocaleString() : 'N/A',
    },
    {
      label: 'International Students',
      icon: GraduationCap,
      getValue: (u: University) =>
        u.international_students_pct ? `${u.international_students_pct}%` : 'N/A',
    },
    {
      label: 'Programs Offered',
      icon: GraduationCap,
      getValue: (u: University) => u.programs_offered ? `${u.programs_offered}+` : 'N/A',
    },
    {
      label: 'Scholarship',
      icon: Award,
      getValue: (u: University) => u.has_scholarship ? '✅ Available' : '❌ Not Available',
    },
  ];

  const getBestValue = (
    getNumeric: ((u: University) => number) | undefined,
    lowerIsBetter?: boolean
  ): string | null => {
    if (!getNumeric) return null;
    const values = compareUniversities.map((u) => ({
      id: u.id,
      value: getNumeric(u),
    }));
    if (lowerIsBetter) {
      return values.reduce((min, v) => (v.value < min.value ? v : min)).id;
    }
    return values.reduce((max, v) => (v.value > max.value ? v : max)).id;
  };

  return (
    <section id="compare" className="py-16 bg-gradient-to-br from-gray-50 to-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center mb-8">
          <div className="inline-flex items-center justify-center w-16 h-16 bg-gradient-to-br from-purple-600 to-pink-600 rounded-2xl mb-4">
            <ArrowLeftRight className="text-white" size={32} />
          </div>
          <h2 className="text-3xl md:text-4xl font-bold text-gray-800 mb-4">
            Compare Universities
          </h2>
          <p className="text-lg text-gray-600 max-w-2xl mx-auto mb-4">
            Side-by-side comparison of your selected universities
          </p>
          <button
            onClick={onClearCompare}
            className="text-sm text-red-600 hover:text-red-700 font-medium"
          >
            Clear All
          </button>
        </div>

        <div className="bg-white rounded-2xl shadow-lg border border-gray-200 overflow-hidden">
          {/* University Headers */}
          <div className="grid border-b border-gray-200" style={{ gridTemplateColumns: `200px repeat(${compareUniversities.length}, 1fr)` }}>
            <div className="p-4 bg-gray-50 font-semibold text-gray-700 flex items-center">
              Metric
            </div>
            {compareUniversities.map((uni) => (
              <div key={uni.id} className="p-4 bg-gradient-to-br from-blue-50 to-teal-50 relative">
                <button
                  onClick={() => onRemoveFromCompare(uni.id)}
                  className="absolute top-2 right-2 p-1 text-gray-400 hover:text-red-500 transition-colors"
                  aria-label="Remove from comparison"
                >
                  <X size={16} />
                </button>
                <div className="w-16 h-16 rounded-xl overflow-hidden mb-3 border-2 border-white shadow-sm">
                  <img
                    src={uni.image_url}
                    alt={uni.name}
                    className="w-full h-full object-cover"
                    onError={(e) => {
                      e.currentTarget.src =
                        'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=400&h=400&fit=crop';
                    }}
                  />
                </div>
                <h3 className="font-bold text-gray-800 text-sm leading-tight">{uni.name}</h3>
                <p className="text-xs text-gray-500 mt-1">
                  {uni.country_flag} {uni.country}
                </p>
              </div>
            ))}
          </div>

          {/* Comparison Rows */}
          {metrics.map((metric, idx) => {
            const bestId = getBestValue(metric.getNumeric, metric.lowerIsBetter);
            const Icon = metric.icon;

            return (
              <div
                key={metric.label}
                className={`grid border-b border-gray-100 ${idx % 2 === 0 ? 'bg-white' : 'bg-gray-50/50'}`}
                style={{ gridTemplateColumns: `200px repeat(${compareUniversities.length}, 1fr)` }}
              >
                <div className="p-4 flex items-center space-x-2 text-sm font-medium text-gray-700">
                  <Icon size={16} className="text-gray-400 flex-shrink-0" />
                  <span>{metric.label}</span>
                </div>
                {compareUniversities.map((uni) => (
                  <div
                    key={uni.id}
                    className={`p-4 text-sm flex items-center ${
                      bestId === uni.id
                        ? 'text-green-700 font-semibold bg-green-50/50'
                        : 'text-gray-700'
                    }`}
                  >
                    {metric.getValue(uni)}
                    {bestId === uni.id && (
                      <span className="ml-2 text-xs bg-green-100 text-green-700 px-2 py-0.5 rounded-full">
                        Best
                      </span>
                    )}
                  </div>
                ))}
              </div>
            );
          })}
        </div>

        {compareUniversities.length < 3 && (
          <p className="text-center text-sm text-gray-500 mt-4">
            You can add up to {3 - compareUniversities.length} more{' '}
            {3 - compareUniversities.length === 1 ? 'university' : 'universities'} to compare
          </p>
        )}
      </div>
    </section>
  );
}
