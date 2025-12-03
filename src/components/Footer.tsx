import { Facebook, Twitter, Instagram, Linkedin, Mail, Phone, MapPin, ArrowUp } from 'lucide-react';

export default function Footer() {
  const scrollToTop = () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  };

  return (
    <footer className="bg-gray-900 text-gray-300">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 mb-8">
          <div>
            <h3 className="text-white text-xl font-bold mb-4">UniSearch</h3>
            <p className="text-sm text-gray-400 leading-relaxed mb-4">
              Your trusted partner in finding the perfect university match. We help students from
              developing regions discover opportunities worldwide.
            </p>
            <div className="flex space-x-3">
              <a
                href="#"
                className="w-10 h-10 bg-gray-800 hover:bg-blue-600 rounded-lg flex items-center justify-center transition-colors"
                aria-label="Facebook"
              >
                <Facebook size={18} />
              </a>
              <a
                href="#"
                className="w-10 h-10 bg-gray-800 hover:bg-blue-400 rounded-lg flex items-center justify-center transition-colors"
                aria-label="Twitter"
              >
                <Twitter size={18} />
              </a>
              <a
                href="#"
                className="w-10 h-10 bg-gray-800 hover:bg-pink-600 rounded-lg flex items-center justify-center transition-colors"
                aria-label="Instagram"
              >
                <Instagram size={18} />
              </a>
              <a
                href="#"
                className="w-10 h-10 bg-gray-800 hover:bg-blue-700 rounded-lg flex items-center justify-center transition-colors"
                aria-label="LinkedIn"
              >
                <Linkedin size={18} />
              </a>
            </div>
          </div>

          <div>
            <h4 className="text-white font-semibold mb-4">Quick Links</h4>
            <ul className="space-y-2 text-sm">
              <li>
                <a href="#home" className="hover:text-white transition-colors">
                  Home
                </a>
              </li>
              <li>
                <a href="#universities" className="hover:text-white transition-colors">
                  Browse Universities
                </a>
              </li>
              <li>
                <a href="#scholarships" className="hover:text-white transition-colors">
                  Scholarships
                </a>
              </li>
              <li>
                <a href="#ai-recommendations" className="hover:text-white transition-colors">
                  AI Recommendations
                </a>
              </li>
              <li>
                <a href="#about" className="hover:text-white transition-colors">
                  About Us
                </a>
              </li>
            </ul>
          </div>

          <div>
            <h4 className="text-white font-semibold mb-4">Resources</h4>
            <ul className="space-y-2 text-sm">
              <li>
                <a href="#" className="hover:text-white transition-colors">
                  Application Guide
                </a>
              </li>
              <li>
                <a href="#" className="hover:text-white transition-colors">
                  IELTS Preparation
                </a>
              </li>
              <li>
                <a href="#" className="hover:text-white transition-colors">
                  Visa Information
                </a>
              </li>
              <li>
                <a href="#" className="hover:text-white transition-colors">
                  Student Stories
                </a>
              </li>
              <li>
                <a href="#" className="hover:text-white transition-colors">
                  Blog
                </a>
              </li>
            </ul>
          </div>

          <div>
            <h4 className="text-white font-semibold mb-4">Contact Us</h4>
            <ul className="space-y-3 text-sm">
              <li className="flex items-start space-x-3">
                <Mail size={18} className="mt-0.5 flex-shrink-0" />
                <a href="mailto:info@unisearch.com" className="hover:text-white transition-colors">
                  info@unisearch.com
                </a>
              </li>
              <li className="flex items-start space-x-3">
                <Phone size={18} className="mt-0.5 flex-shrink-0" />
                <a href="tel:+1234567890" className="hover:text-white transition-colors">
                  +1 (234) 567-890
                </a>
              </li>
              <li className="flex items-start space-x-3">
                <MapPin size={18} className="mt-0.5 flex-shrink-0" />
                <span>123 Education Street, Learning City, ED 12345</span>
              </li>
            </ul>
          </div>
        </div>

        <div className="pt-8 border-t border-gray-800 flex flex-col md:flex-row items-center justify-between gap-4">
          <p className="text-sm text-gray-400">
            © 2025 UniSearch. All rights reserved.
          </p>
          <div className="flex items-center space-x-6 text-sm">
            <a href="#" className="hover:text-white transition-colors">
              Privacy Policy
            </a>
            <a href="#" className="hover:text-white transition-colors">
              Terms of Service
            </a>
            <a href="#" className="hover:text-white transition-colors">
              Cookie Policy
            </a>
          </div>
        </div>
      </div>

      <button
        onClick={scrollToTop}
        className="fixed bottom-8 right-8 w-12 h-12 bg-blue-600 hover:bg-blue-700 text-white rounded-full shadow-lg flex items-center justify-center transition-all duration-200 hover:-translate-y-1 z-40"
        aria-label="Back to top"
      >
        <ArrowUp size={24} />
      </button>
    </footer>
  );
}
