import { useState, useEffect } from 'react';
import { Menu, X, User } from 'lucide-react';

export default function Header() {
  const [isScrolled, setIsScrolled] = useState(false);
  const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      setIsScrolled(window.scrollY > 20);
    };

    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  return (
    <header
      className={`fixed top-0 left-0 right-0 z-50 transition-all duration-300 ${isScrolled ? 'bg-white shadow-md' : 'bg-transparent'
        }`}
    >
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex justify-between items-center h-16 md:h-20">
          <div className="flex items-center">
            <a href="#" className="flex items-center space-x-2">
              <div className={`text-2xl font-bold transition-colors duration-300 ${isScrolled ? 'text-gradient' : 'text-white'
                }`}>
                UniSearch
              </div>
            </a>
          </div>

          <nav className="hidden md:flex items-center space-x-8">
            <a
              href="#home"
              className={`font-medium transition-colors duration-200 hover:text-blue-600 ${isScrolled ? 'text-gray-700' : 'text-white hover:text-blue-200'
                }`}
            >
              Home
            </a>
            <a
              href="#universities"
              className={`font-medium transition-colors duration-200 hover:text-blue-600 ${isScrolled ? 'text-gray-700' : 'text-white hover:text-blue-200'
                }`}
            >
              Universities
            </a>
            <a
              href="#programs"
              className={`font-medium transition-colors duration-200 hover:text-blue-600 ${isScrolled ? 'text-gray-700' : 'text-white hover:text-blue-200'
                }`}
            >
              Programs
            </a>
            <a
              href="#scholarships"
              className={`font-medium transition-colors duration-200 hover:text-blue-600 ${isScrolled ? 'text-gray-700' : 'text-white hover:text-blue-200'
                }`}
            >
              Scholarships
            </a>
            <a
              href="#about"
              className={`font-medium transition-colors duration-200 hover:text-blue-600 ${isScrolled ? 'text-gray-700' : 'text-white hover:text-blue-200'
                }`}
            >
              About
            </a>
          </nav>

          <div className="hidden md:flex items-center space-x-4">
            <button className={`flex items-center space-x-2 px-4 py-2 rounded-lg font-medium transition-all duration-200 ${isScrolled
              ? 'text-gray-700 hover:bg-gray-100'
              : 'text-white hover:bg-white/10'
              }`}>
              <User size={20} />
              <span>Login</span>
            </button>
          </div>

          <button
            className={`md:hidden p-2 rounded-lg transition-colors ${isScrolled ? 'text-gray-700' : 'text-white'
              }`}
            onClick={() => setIsMobileMenuOpen(!isMobileMenuOpen)}
            aria-label="Toggle menu"
          >
            {isMobileMenuOpen ? <X size={24} /> : <Menu size={24} />}
          </button>
        </div>
      </div>

      {isMobileMenuOpen && (
        <div className="md:hidden bg-white border-t border-gray-200 shadow-lg">
          <nav className="px-4 py-6 space-y-4">
            <a
              href="#home"
              className="block text-gray-700 font-medium hover:text-blue-600 transition-colors"
              onClick={() => setIsMobileMenuOpen(false)}
            >
              Home
            </a>
            <a
              href="#universities"
              className="block text-gray-700 font-medium hover:text-blue-600 transition-colors"
              onClick={() => setIsMobileMenuOpen(false)}
            >
              Universities
            </a>
            <a
              href="#programs"
              className="block text-gray-700 font-medium hover:text-blue-600 transition-colors"
              onClick={() => setIsMobileMenuOpen(false)}
            >
              Programs
            </a>
            <a
              href="#scholarships"
              className="block text-gray-700 font-medium hover:text-blue-600 transition-colors"
              onClick={() => setIsMobileMenuOpen(false)}
            >
              Scholarships
            </a>
            <a
              href="#about"
              className="block text-gray-700 font-medium hover:text-blue-600 transition-colors"
              onClick={() => setIsMobileMenuOpen(false)}
            >
              About
            </a>
            <button className="flex items-center space-x-2 w-full px-4 py-2 rounded-lg font-medium text-gray-700 hover:bg-gray-100 transition-colors">
              <User size={20} />
              <span>Login</span>
            </button>
          </nav>
        </div>
      )}
    </header>
  );
}
