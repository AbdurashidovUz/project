import { Search } from 'lucide-react';
import { useState, useEffect, useRef } from 'react';
import { mockUniversities } from '../data/mockUniversities';

interface HeroProps {
  onSearch: (query: string) => void;
}

export default function Hero({ onSearch }: HeroProps) {
  const [searchQuery, setSearchQuery] = useState('');
  const [showSuggestions, setShowSuggestions] = useState(false);
  const [suggestions, setSuggestions] = useState<typeof mockUniversities>([]);
  const searchRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const handleClickOutside = (event: MouseEvent) => {
      if (searchRef.current && !searchRef.current.contains(event.target as Node)) {
        setShowSuggestions(false);
      }
    };

    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, []);

  useEffect(() => {
    if (searchQuery.trim().length > 0) {
      const filtered = mockUniversities.filter((uni) => {
        const query = searchQuery.toLowerCase();
        return (
          uni.name.toLowerCase().includes(query) ||
          uni.country.toLowerCase().includes(query) ||
          uni.location.toLowerCase().includes(query)
        );
      });
      setSuggestions(filtered.slice(0, 5));
      setShowSuggestions(filtered.length > 0);
    } else {
      setSuggestions([]);
      setShowSuggestions(false);
    }
  }, [searchQuery]);

  const handleSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    onSearch(searchQuery);
    setShowSuggestions(false);
  };

  const handleSuggestionClick = (universityName: string) => {
    setSearchQuery(universityName);
    onSearch(universityName);
    setShowSuggestions(false);
  };

  return (
    <section className="relative bg-gradient-hero pt-24 pb-32 md:pt-32 md:pb-40 overflow-hidden">
      <div className="absolute inset-0 opacity-10">
        <div className="absolute top-0 left-0 w-96 h-96 bg-white rounded-full mix-blend-overlay filter blur-3xl animate-pulse"></div>
        <div className="absolute bottom-0 right-0 w-96 h-96 bg-teal-300 rounded-full mix-blend-overlay filter blur-3xl animate-pulse delay-1000"></div>
      </div>

      <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center">
          <h1 className="text-4xl md:text-5xl lg:text-6xl font-bold text-white mb-6 leading-tight">
            Find Your Perfect <br className="hidden md:block" />
            University Match
          </h1>
          <p className="text-lg md:text-xl text-blue-100 mb-12 max-w-2xl mx-auto">
            Discover universities and scholarships tailored to your profile with AI-powered recommendations
          </p>

          <div ref={searchRef} className="max-w-3xl mx-auto relative">
            <form onSubmit={handleSubmit}>
              <div className="relative flex items-stretch bg-white rounded-2xl shadow-2xl">
                <div className="absolute left-5 text-gray-400 pointer-events-none top-1/2 -translate-y-1/2">
                  <Search size={24} />
                </div>
                <input
                  type="text"
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  onFocus={() => searchQuery.length > 0 && suggestions.length > 0 && setShowSuggestions(true)}
                  placeholder="Search by university name, country, or program..."
                  className="flex-1 pl-16 pr-4 py-5 text-gray-700 text-lg focus:outline-none bg-transparent rounded-l-2xl"
                />
                <button
                  type="submit"
                  className="bg-gradient-to-r from-blue-600 to-blue-700 text-white px-10 py-5 font-semibold hover:from-blue-700 hover:to-blue-800 transition-all duration-200 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 flex items-center space-x-2 shadow-lg hover:shadow-xl rounded-r-2xl"
                >
                  <Search size={20} />
                  <span>Search</span>
                </button>
              </div>
            </form>


            {showSuggestions && suggestions.length > 0 && (
              <div className="absolute top-full left-0 right-0 mt-2 bg-white rounded-xl shadow-2xl overflow-hidden z-50 max-h-80 overflow-y-auto">
                {suggestions.map((uni) => (
                  <button
                    key={uni.id}
                    onClick={() => handleSuggestionClick(uni.name)}
                    className="w-full px-6 py-4 text-left hover:bg-gray-50 transition-colors border-b border-gray-100 last:border-b-0 flex items-center space-x-4"
                  >
                    <div className="w-12 h-12 rounded-lg overflow-hidden bg-gray-100 flex-shrink-0">
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
                      <div className="font-semibold text-gray-800">{uni.name}</div>
                      <div className="text-sm text-gray-600">
                        <span className="mr-1">{uni.countryFlag}</span>
                        {uni.location}, {uni.country}
                      </div>
                    </div>
                    <div className="text-sm text-blue-600 font-medium">View →</div>
                  </button>
                ))}
              </div>
            )}
          </div>

          <div className="mt-8 flex flex-wrap justify-center gap-3">
            <span className="text-blue-100 text-sm">Popular searches:</span>
            <button
              onClick={() => {
                setSearchQuery('Computer Science');
                onSearch('Computer Science');
              }}
              className="text-sm text-white bg-white/20 hover:bg-white/30 px-4 py-1 rounded-full transition-colors duration-200"
            >
              Computer Science
            </button>
            <button
              onClick={() => {
                setSearchQuery('Engineering');
                onSearch('Engineering');
              }}
              className="text-sm text-white bg-white/20 hover:bg-white/30 px-4 py-1 rounded-full transition-colors duration-200"
            >
              Engineering
            </button>
            <button
              onClick={() => {
                setSearchQuery('Business');
                onSearch('Business');
              }}
              className="text-sm text-white bg-white/20 hover:bg-white/30 px-4 py-1 rounded-full transition-colors duration-200"
            >
              Business
            </button>
            <button
              onClick={() => {
                setSearchQuery('Medicine');
                onSearch('Medicine');
              }}
              className="text-sm text-white bg-white/20 hover:bg-white/30 px-4 py-1 rounded-full transition-colors duration-200"
            >
              Medicine
            </button>
          </div>
        </div>
      </div>
    </section>
  );
}
