import { Search } from 'lucide-react';

interface HeroProps {
  onSearch: (query: string) => void;
}

export default function Hero({ onSearch }: HeroProps) {
  const handleSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const formData = new FormData(e.currentTarget);
    const query = formData.get('search') as string;
    onSearch(query);
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

          <form onSubmit={handleSubmit} className="max-w-3xl mx-auto">
            <div className="relative flex items-center bg-white rounded-xl shadow-2xl overflow-hidden">
              <div className="absolute left-4 text-gray-400">
                <Search size={24} />
              </div>
              <input
                type="text"
                name="search"
                placeholder="Search by university name, country, or program..."
                className="flex-1 pl-14 pr-4 py-5 text-gray-700 text-lg focus:outline-none"
              />
              <button
                type="submit"
                className="bg-blue-600 text-white px-8 py-5 font-semibold hover:bg-blue-700 transition-colors duration-200 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2"
              >
                Search
              </button>
            </div>
          </form>

          <div className="mt-8 flex flex-wrap justify-center gap-3">
            <span className="text-blue-100 text-sm">Popular searches:</span>
            <button className="text-sm text-white bg-white/20 hover:bg-white/30 px-4 py-1 rounded-full transition-colors duration-200">
              Computer Science
            </button>
            <button className="text-sm text-white bg-white/20 hover:bg-white/30 px-4 py-1 rounded-full transition-colors duration-200">
              Engineering
            </button>
            <button className="text-sm text-white bg-white/20 hover:bg-white/30 px-4 py-1 rounded-full transition-colors duration-200">
              Business
            </button>
            <button className="text-sm text-white bg-white/20 hover:bg-white/30 px-4 py-1 rounded-full transition-colors duration-200">
              Medicine
            </button>
          </div>
        </div>
      </div>
    </section>
  );
}
