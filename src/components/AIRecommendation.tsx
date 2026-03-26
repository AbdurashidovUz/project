import { useState } from 'react';
import { Sparkles, TrendingUp, Target, Lightbulb, MapPin, DollarSign, Award, Loader2 } from 'lucide-react';
import { fetchUniversities } from '../lib/api';
import { getRecommendations, type ScoredUniversity, type StudentProfile } from '../lib/ai';
import type { University } from '../lib/database.types';
import { mockUniversities as fallbackData } from '../data/mockUniversities';

const academicBackgrounds = [
  'High School',
  'Associate Degree',
  'Bachelor Degree',
  'Master Degree',
];

const countries = [
  { code: 'US', name: 'United States', flag: '🇺🇸' },
  { code: 'UK', name: 'United Kingdom', flag: '🇬🇧' },
  { code: 'CA', name: 'Canada', flag: '🇨🇦' },
  { code: 'AU', name: 'Australia', flag: '🇦🇺' },
  { code: 'DE', name: 'Germany', flag: '🇩🇪' },
  { code: 'FR', name: 'France', flag: '🇫🇷' },
  { code: 'SG', name: 'Singapore', flag: '🇸🇬' },
  { code: 'NL', name: 'Netherlands', flag: '🇳🇱' },
  { code: 'CH', name: 'Switzerland', flag: '🇨🇭' },
];

export default function AIRecommendation() {
  const [isLoading, setIsLoading] = useState(false);
  const [showResults, setShowResults] = useState(false);
  const [profile, setProfile] = useState<StudentProfile>({
    academicBackground: 'Bachelor Degree',
    gpa: 3.5,
    ieltsScore: 6.5,
    budgetMin: 10000,
    budgetMax: 40000,
    preferredCountries: [],
  });
  const [recommendations, setRecommendations] = useState<{
    safe: ScoredUniversity[];
    match: ScoredUniversity[];
    ambitious: ScoredUniversity[];
  }>({ safe: [], match: [], ambitious: [] });

  const handleCountryToggle = (countryCode: string) => {
    setProfile((prev) => ({
      ...prev,
      preferredCountries: prev.preferredCountries.includes(countryCode)
        ? prev.preferredCountries.filter((c) => c !== countryCode)
        : [...prev.preferredCountries, countryCode],
    }));
  };

  const handleGetRecommendations = async () => {
    setIsLoading(true);

    try {
      // Try fetching from Supabase first
      let universities: University[] = await fetchUniversities();

      // If Supabase returns empty (e.g., not configured), use fallback
      if (universities.length === 0) {
        universities = fallbackData.map((u) => ({
          id: u.id,
          name: u.name,
          country: u.country,
          country_flag: u.countryFlag,
          location: u.location,
          description: u.description,
          tuition_range: u.tuitionRange,
          ielts_requirement: u.ieltsRequirement,
          deadline: u.deadline,
          has_scholarship: u.hasScholarship,
          image_url: u.image,
          urgency: u.urgency || null,
          ranking: null,
          acceptance_rate: null,
          student_population: null,
          international_students_pct: null,
          programs_offered: null,
          website: null,
          tuition_min: null,
          tuition_max: null,
          created_at: new Date().toISOString(),
        }));
      }

      const results = getRecommendations(universities, profile);
      setRecommendations(results);
    } catch (error) {
      console.error('Error getting recommendations:', error);
    }

    setIsLoading(false);
    setShowResults(true);
  };

  const renderUniversityCard = (uni: ScoredUniversity, categoryColor: string) => (
    <div key={uni.id} className="card p-4 hover:shadow-md transition-shadow">
      <div className="flex items-center space-x-3 mb-3">
        <div className="w-12 h-12 bg-gray-100 rounded-lg overflow-hidden flex-shrink-0">
          <img
            src={uni.image_url}
            alt={uni.name}
            className="w-full h-full object-cover"
            onError={(e) => {
              e.currentTarget.src =
                'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=400&h=400&fit=crop';
            }}
          />
        </div>
        <div className="flex-1 min-w-0">
          <h4 className="font-semibold text-gray-800 text-sm truncate">{uni.name}</h4>
          <p className="text-xs text-gray-600">
            {uni.country_flag} {uni.country}
          </p>
        </div>
        <div className={`text-xs font-bold px-2 py-1 rounded-full ${categoryColor}`}>
          {uni.score}%
        </div>
      </div>

      {uni.reasons.length > 0 && (
        <div className="mb-3">
          {uni.reasons.slice(0, 2).map((reason, idx) => (
            <p key={idx} className="text-xs text-gray-500 flex items-start mb-1">
              <span className="mr-1 text-green-500">✓</span>
              {reason}
            </p>
          ))}
        </div>
      )}

      <div className="text-xs text-gray-600 space-y-1">
        <div className="flex items-center justify-between">
          <span className="flex items-center">
            <DollarSign size={12} className="mr-1" />
            Tuition:
          </span>
          <span className="font-medium">{uni.tuition_range}</span>
        </div>
        <div className="flex items-center justify-between">
          <span className="flex items-center">
            <Award size={12} className="mr-1" />
            IELTS:
          </span>
          <span className="font-medium">{uni.ielts_requirement}+</span>
        </div>
        {uni.ranking && (
          <div className="flex items-center justify-between">
            <span className="flex items-center">
              <MapPin size={12} className="mr-1" />
              Ranking:
            </span>
            <span className="font-medium">#{uni.ranking}</span>
          </div>
        )}
      </div>

      {uni.has_scholarship && (
        <div className="mt-2">
          <span className="text-xs bg-green-100 text-green-700 px-2 py-0.5 rounded-full">
            Scholarship Available
          </span>
        </div>
      )}
    </div>
  );

  return (
    <section id="ai-recommendations" className="py-16 bg-gradient-to-br from-gray-50 to-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center mb-12">
          <div className="inline-flex items-center justify-center w-16 h-16 bg-gradient-to-br from-blue-600 to-teal-600 rounded-2xl mb-4">
            <Sparkles className="text-white" size={32} />
          </div>
          <h2 className="text-3xl md:text-4xl font-bold text-gray-800 mb-4">
            AI-Powered Recommendations
          </h2>
          <p className="text-lg text-gray-600 max-w-2xl mx-auto">
            Get personalized university recommendations based on your academic profile and
            preferences
          </p>
        </div>

        {!showResults ? (
          <div className="max-w-3xl mx-auto">
            <div className="card p-8">
              <h3 className="text-xl font-semibold text-gray-800 mb-6">
                Tell us about yourself
              </h3>

              <div className="space-y-6">
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-2">
                    Academic Background
                  </label>
                  <select
                    value={profile.academicBackground}
                    onChange={(e) =>
                      setProfile({ ...profile, academicBackground: e.target.value })
                    }
                    className="input-field"
                  >
                    {academicBackgrounds.map((bg) => (
                      <option key={bg} value={bg}>
                        {bg}
                      </option>
                    ))}
                  </select>
                </div>

                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-2">
                    GPA: {profile.gpa.toFixed(1)} / 4.0
                  </label>
                  <input
                    type="range"
                    min="2.0"
                    max="4.0"
                    step="0.1"
                    value={profile.gpa}
                    onChange={(e) =>
                      setProfile({ ...profile, gpa: parseFloat(e.target.value) })
                    }
                    className="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointer accent-blue-600"
                  />
                  <div className="flex justify-between text-xs text-gray-500 mt-1">
                    <span>2.0</span>
                    <span>4.0</span>
                  </div>
                </div>

                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-2">
                    IELTS Score: {profile.ieltsScore.toFixed(1)} / 9.0
                  </label>
                  <input
                    type="range"
                    min="4.0"
                    max="9.0"
                    step="0.5"
                    value={profile.ieltsScore}
                    onChange={(e) =>
                      setProfile({ ...profile, ieltsScore: parseFloat(e.target.value) })
                    }
                    className="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointer accent-blue-600"
                  />
                  <div className="flex justify-between text-xs text-gray-500 mt-1">
                    <span>4.0</span>
                    <span>9.0</span>
                  </div>
                </div>

                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-2">
                    Annual Budget Range
                  </label>
                  <div className="grid grid-cols-2 gap-4">
                    <div>
                      <input
                        type="number"
                        value={profile.budgetMin}
                        onChange={(e) =>
                          setProfile({ ...profile, budgetMin: parseInt(e.target.value) || 0 })
                        }
                        className="input-field"
                        placeholder="Min"
                      />
                    </div>
                    <div>
                      <input
                        type="number"
                        value={profile.budgetMax}
                        onChange={(e) =>
                          setProfile({ ...profile, budgetMax: parseInt(e.target.value) || 0 })
                        }
                        className="input-field"
                        placeholder="Max"
                      />
                    </div>
                  </div>
                  <p className="text-xs text-gray-500 mt-1">
                    ${profile.budgetMin.toLocaleString()} - ${profile.budgetMax.toLocaleString()}
                  </p>
                </div>

                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-3">
                    Preferred Countries
                  </label>
                  <div className="grid grid-cols-2 md:grid-cols-3 gap-3">
                    {countries.map((country) => (
                      <label
                        key={country.code}
                        className={`flex items-center space-x-3 p-3 rounded-lg border-2 cursor-pointer transition-all ${
                          profile.preferredCountries.includes(country.code)
                            ? 'border-blue-500 bg-blue-50'
                            : 'border-gray-200 hover:border-gray-300'
                        }`}
                      >
                        <input
                          type="checkbox"
                          checked={profile.preferredCountries.includes(country.code)}
                          onChange={() => handleCountryToggle(country.code)}
                          className="sr-only"
                        />
                        <span className="text-2xl">{country.flag}</span>
                        <span className="text-sm font-medium text-gray-700">
                          {country.name}
                        </span>
                      </label>
                    ))}
                  </div>
                </div>

                <button
                  onClick={handleGetRecommendations}
                  disabled={isLoading}
                  className="w-full btn-primary flex items-center justify-center space-x-2 disabled:opacity-50 disabled:cursor-not-allowed"
                >
                  {isLoading ? (
                    <>
                      <Loader2 size={20} className="animate-spin" />
                      <span>Analyzing Universities...</span>
                    </>
                  ) : (
                    <>
                      <Sparkles size={20} />
                      <span>Get AI Recommendations</span>
                    </>
                  )}
                </button>
              </div>
            </div>
          </div>
        ) : (
          <div className="space-y-8">
            <div className="text-center">
              <button
                onClick={() => setShowResults(false)}
                className="btn-ghost inline-flex items-center space-x-2"
              >
                <span>← Update Profile</span>
              </button>
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
              {/* Safe Schools */}
              <div className="space-y-4">
                <div className="flex items-center space-x-3 mb-4">
                  <div className="w-12 h-12 bg-green-100 rounded-xl flex items-center justify-center">
                    <Target className="text-green-600" size={24} />
                  </div>
                  <div>
                    <h3 className="text-lg font-semibold text-gray-800">
                      Safe Schools ({recommendations.safe.length})
                    </h3>
                    <p className="text-sm text-gray-600">High acceptance probability</p>
                  </div>
                </div>
                {recommendations.safe.length === 0 ? (
                  <p className="text-sm text-gray-500 text-center py-4">
                    No safe schools found. Try adjusting your criteria.
                  </p>
                ) : (
                  recommendations.safe.map((uni) =>
                    renderUniversityCard(uni, 'bg-green-100 text-green-700')
                  )
                )}
              </div>

              {/* Match Schools */}
              <div className="space-y-4">
                <div className="flex items-center space-x-3 mb-4">
                  <div className="w-12 h-12 bg-blue-100 rounded-xl flex items-center justify-center">
                    <Lightbulb className="text-blue-600" size={24} />
                  </div>
                  <div>
                    <h3 className="text-lg font-semibold text-gray-800">
                      Match Schools ({recommendations.match.length})
                    </h3>
                    <p className="text-sm text-gray-600">Good fit for your profile</p>
                  </div>
                </div>
                {recommendations.match.length === 0 ? (
                  <p className="text-sm text-gray-500 text-center py-4">
                    No match schools found. Try adjusting your criteria.
                  </p>
                ) : (
                  recommendations.match.map((uni) =>
                    renderUniversityCard(uni, 'bg-blue-100 text-blue-700')
                  )
                )}
              </div>

              {/* Ambitious Schools */}
              <div className="space-y-4">
                <div className="flex items-center space-x-3 mb-4">
                  <div className="w-12 h-12 bg-orange-100 rounded-xl flex items-center justify-center">
                    <TrendingUp className="text-orange-600" size={24} />
                  </div>
                  <div>
                    <h3 className="text-lg font-semibold text-gray-800">
                      Ambitious Schools ({recommendations.ambitious.length})
                    </h3>
                    <p className="text-sm text-gray-600">Reach for the stars</p>
                  </div>
                </div>
                {recommendations.ambitious.length === 0 ? (
                  <p className="text-sm text-gray-500 text-center py-4">
                    No ambitious schools found. You're a strong candidate!
                  </p>
                ) : (
                  recommendations.ambitious.map((uni) =>
                    renderUniversityCard(uni, 'bg-orange-100 text-orange-700')
                  )
                )}
              </div>
            </div>
          </div>
        )}
      </div>
    </section>
  );
}
