import { useState } from 'react';
import { Sparkles, TrendingUp, Target, Lightbulb } from 'lucide-react';

interface ProfileData {
  academicBackground: string;
  gpa: number;
  ieltsScore: number;
  budgetMin: number;
  budgetMax: number;
  preferredCountries: string[];
}

// Props interface removed - no props needed for this component

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
];

export default function AIRecommendation() {
  const [isLoading, setIsLoading] = useState(false);
  const [showResults, setShowResults] = useState(false);
  const [profile, setProfile] = useState<ProfileData>({
    academicBackground: 'Bachelor Degree',
    gpa: 3.5,
    ieltsScore: 6.5,
    budgetMin: 10000,
    budgetMax: 40000,
    preferredCountries: [],
  });

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
    await new Promise((resolve) => setTimeout(resolve, 2000));
    setIsLoading(false);
    setShowResults(true);
  };

  const mockRecommendations = {
    safe: [
      {
        id: '1',
        name: 'Tech University',
        country: 'Germany',
        countryFlag: '🇩🇪',
        location: 'Berlin',
        description: 'Excellent fit based on your profile',
        tuitionRange: '$15,000-$20,000',
        ieltsRequirement: 6.0,
        deadline: 'May 15, 2025',
        hasScholarship: true,
        image: '/images/universities/tum.png',
        urgency: 'low' as const,
      },
    ],
    match: [
      {
        id: '2',
        name: 'Innovation Institute',
        country: 'Canada',
        countryFlag: '🇨🇦',
        location: 'Toronto',
        description: 'Strong match for your qualifications',
        tuitionRange: '$25,000-$30,000',
        ieltsRequirement: 6.5,
        deadline: 'April 30, 2025',
        hasScholarship: true,
        image: '/images/universities/toronto.png',
        urgency: 'medium' as const,
      },
      {
        id: '3',
        name: 'Global University',
        country: 'Australia',
        countryFlag: '🇦🇺',
        location: 'Sydney',
        description: 'Good alignment with your goals',
        tuitionRange: '$28,000-$32,000',
        ieltsRequirement: 6.5,
        deadline: 'March 31, 2025',
        hasScholarship: false,
        image: '/images/universities/melbourne.png',
        urgency: 'medium' as const,
      },
    ],
    ambitious: [
      {
        id: '4',
        name: 'Elite Academy',
        country: 'United Kingdom',
        countryFlag: '🇬🇧',
        location: 'London',
        description: 'Competitive but within reach',
        tuitionRange: '$35,000-$40,000',
        ieltsRequirement: 7.0,
        deadline: 'January 15, 2025',
        hasScholarship: true,
        image: '/images/universities/oxford.png',
        urgency: 'high' as const,
      },
    ],
  };

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
                          setProfile({ ...profile, budgetMin: parseInt(e.target.value) })
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
                          setProfile({ ...profile, budgetMax: parseInt(e.target.value) })
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
                        className={`flex items-center space-x-3 p-3 rounded-lg border-2 cursor-pointer transition-all ${profile.preferredCountries.includes(country.code)
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
                  disabled={isLoading || profile.preferredCountries.length === 0}
                  className="w-full btn-primary flex items-center justify-center space-x-2 disabled:opacity-50 disabled:cursor-not-allowed"
                >
                  {isLoading ? (
                    <>
                      <div className="w-5 h-5 border-2 border-white border-t-transparent rounded-full animate-spin" />
                      <span>Generating Recommendations...</span>
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
              <div className="space-y-4">
                <div className="flex items-center space-x-3 mb-4">
                  <div className="w-12 h-12 bg-green-100 rounded-xl flex items-center justify-center">
                    <Target className="text-green-600" size={24} />
                  </div>
                  <div>
                    <h3 className="text-lg font-semibold text-gray-800">Safe Schools</h3>
                    <p className="text-sm text-gray-600">High acceptance probability</p>
                  </div>
                </div>
                {mockRecommendations.safe.map((uni) => (
                  <div key={uni.id} className="card p-4">
                    <div className="flex items-center space-x-3 mb-3">
                      <div className="w-12 h-12 bg-gray-100 rounded-lg overflow-hidden">
                        <img
                          src={uni.image}
                          alt={uni.name}
                          className="w-full h-full object-cover"
                          onError={(e) => {
                            e.currentTarget.src = 'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=400&h=400&fit=crop';
                          }}
                        />
                      </div>
                      <div className="flex-1">
                        <h4 className="font-semibold text-gray-800 text-sm">{uni.name}</h4>
                        <p className="text-xs text-gray-600">
                          {uni.countryFlag} {uni.country}
                        </p>
                      </div>
                    </div>
                    <p className="text-xs text-gray-600 mb-2">{uni.description}</p>
                    <div className="text-xs text-gray-600">
                      <div className="flex justify-between mb-1">
                        <span>Tuition:</span>
                        <span className="font-medium">{uni.tuitionRange}</span>
                      </div>
                      <div className="flex justify-between">
                        <span>IELTS:</span>
                        <span className="font-medium">{uni.ieltsRequirement}+</span>
                      </div>
                    </div>
                  </div>
                ))}
              </div>

              <div className="space-y-4">
                <div className="flex items-center space-x-3 mb-4">
                  <div className="w-12 h-12 bg-blue-100 rounded-xl flex items-center justify-center">
                    <Lightbulb className="text-blue-600" size={24} />
                  </div>
                  <div>
                    <h3 className="text-lg font-semibold text-gray-800">Match Schools</h3>
                    <p className="text-sm text-gray-600">Good fit for your profile</p>
                  </div>
                </div>
                {mockRecommendations.match.map((uni) => (
                  <div key={uni.id} className="card p-4">
                    <div className="flex items-center space-x-3 mb-3">
                      <div className="w-12 h-12 bg-gray-100 rounded-lg overflow-hidden">
                        <img
                          src={uni.image}
                          alt={uni.name}
                          className="w-full h-full object-cover"
                          onError={(e) => {
                            e.currentTarget.src = 'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=400&h=400&fit=crop';
                          }}
                        />
                      </div>
                      <div className="flex-1">
                        <h4 className="font-semibold text-gray-800 text-sm">{uni.name}</h4>
                        <p className="text-xs text-gray-600">
                          {uni.countryFlag} {uni.country}
                        </p>
                      </div>
                    </div>
                    <p className="text-xs text-gray-600 mb-2">{uni.description}</p>
                    <div className="text-xs text-gray-600">
                      <div className="flex justify-between mb-1">
                        <span>Tuition:</span>
                        <span className="font-medium">{uni.tuitionRange}</span>
                      </div>
                      <div className="flex justify-between">
                        <span>IELTS:</span>
                        <span className="font-medium">{uni.ieltsRequirement}+</span>
                      </div>
                    </div>
                  </div>
                ))}
              </div>

              <div className="space-y-4">
                <div className="flex items-center space-x-3 mb-4">
                  <div className="w-12 h-12 bg-orange-100 rounded-xl flex items-center justify-center">
                    <TrendingUp className="text-orange-600" size={24} />
                  </div>
                  <div>
                    <h3 className="text-lg font-semibold text-gray-800">Ambitious Schools</h3>
                    <p className="text-sm text-gray-600">Reach for the stars</p>
                  </div>
                </div>
                {mockRecommendations.ambitious.map((uni) => (
                  <div key={uni.id} className="card p-4">
                    <div className="flex items-center space-x-3 mb-3">
                      <div className="w-12 h-12 bg-gray-100 rounded-lg overflow-hidden">
                        <img
                          src={uni.image}
                          alt={uni.name}
                          className="w-full h-full object-cover"
                          onError={(e) => {
                            e.currentTarget.src = 'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=400&h=400&fit=crop';
                          }}
                        />
                      </div>
                      <div className="flex-1">
                        <h4 className="font-semibold text-gray-800 text-sm">{uni.name}</h4>
                        <p className="text-xs text-gray-600">
                          {uni.countryFlag} {uni.country}
                        </p>
                      </div>
                    </div>
                    <p className="text-xs text-gray-600 mb-2">{uni.description}</p>
                    <div className="text-xs text-gray-600">
                      <div className="flex justify-between mb-1">
                        <span>Tuition:</span>
                        <span className="font-medium">{uni.tuitionRange}</span>
                      </div>
                      <div className="flex justify-between">
                        <span>IELTS:</span>
                        <span className="font-medium">{uni.ieltsRequirement}+</span>
                      </div>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          </div>
        )}
      </div>
    </section>
  );
}
