import { X, MapPin, Globe, DollarSign, Calendar, Award, BookOpen, GraduationCap } from 'lucide-react';
import { useState } from 'react';
import { University } from './UniversityCard';

interface UniversityModalProps {
  university: University | null;
  isOpen: boolean;
  onClose: () => void;
  aiRecommendation?: 'safe' | 'match' | 'ambitious';
}

export default function UniversityModal({
  university,
  isOpen,
  onClose,
  aiRecommendation,
}: UniversityModalProps) {
  const [activeTab, setActiveTab] = useState<
    'overview' | 'programs' | 'admission' | 'tuition' | 'scholarships' | 'deadlines'
  >('overview');

  if (!isOpen || !university) return null;

  const getRecommendationBadge = () => {
    switch (aiRecommendation) {
      case 'safe':
        return (
          <span className="inline-flex items-center px-4 py-2 rounded-full text-sm font-semibold bg-green-100 text-green-800 border-2 border-green-200">
            Safe Choice
          </span>
        );
      case 'match':
        return (
          <span className="inline-flex items-center px-4 py-2 rounded-full text-sm font-semibold bg-blue-100 text-blue-800 border-2 border-blue-200">
            Good Match
          </span>
        );
      case 'ambitious':
        return (
          <span className="inline-flex items-center px-4 py-2 rounded-full text-sm font-semibold bg-orange-100 text-orange-800 border-2 border-orange-200">
            Ambitious
          </span>
        );
      default:
        return null;
    }
  };

  const tabs = [
    { id: 'overview', label: 'Overview', icon: BookOpen },
    { id: 'programs', label: 'Programs', icon: GraduationCap },
    { id: 'admission', label: 'Admission', icon: Award },
    { id: 'tuition', label: 'Tuition & Fees', icon: DollarSign },
    { id: 'scholarships', label: 'Scholarships', icon: Award },
    { id: 'deadlines', label: 'Deadlines', icon: Calendar },
  ];

  return (
    <div className="fixed inset-0 z-50 overflow-y-auto">
      <div className="flex items-center justify-center min-h-screen px-4 pt-4 pb-20 text-center sm:p-0">
        <div
          className="fixed inset-0 transition-opacity bg-black/60 backdrop-blur-sm"
          onClick={onClose}
        />

        <div className="relative inline-block w-full max-w-4xl my-8 overflow-hidden text-left align-middle transition-all transform bg-white shadow-2xl rounded-2xl">
          <div className="sticky top-0 z-10 bg-white border-b border-gray-200">
            <div className="relative h-32 bg-gradient-to-br from-blue-600 to-teal-600">
              <button
                onClick={onClose}
                className="absolute top-4 right-4 p-2 bg-white/20 hover:bg-white/30 rounded-full transition-colors backdrop-blur-sm"
                aria-label="Close modal"
              >
                <X size={24} className="text-white" />
              </button>
            </div>

            <div className="px-6 -mt-12">
              <div className="flex items-end space-x-6">
                <div className="w-24 h-24 bg-white rounded-2xl shadow-lg flex items-center justify-center border-4 border-white">
                  <span className="text-4xl">{university.logo}</span>
                </div>
                <div className="flex-1 pb-4">
                  <h2 className="text-2xl font-bold text-gray-800 mb-2">{university.name}</h2>
                  <div className="flex flex-wrap items-center gap-3">
                    <div className="flex items-center space-x-2 text-gray-600">
                      <MapPin size={16} />
                      <span className="text-sm">
                        <span className="mr-1">{university.countryFlag}</span>
                        {university.location}, {university.country}
                      </span>
                    </div>
                    {aiRecommendation && getRecommendationBadge()}
                  </div>
                </div>
              </div>

              <div className="mt-6 border-b border-gray-200 overflow-x-auto">
                <nav className="flex space-x-1 min-w-max">
                  {tabs.map((tab) => {
                    const Icon = tab.icon;
                    return (
                      <button
                        key={tab.id}
                        onClick={() => setActiveTab(tab.id as typeof activeTab)}
                        className={`flex items-center space-x-2 px-4 py-3 text-sm font-medium border-b-2 transition-colors whitespace-nowrap ${
                          activeTab === tab.id
                            ? 'border-blue-600 text-blue-600'
                            : 'border-transparent text-gray-600 hover:text-gray-800 hover:border-gray-300'
                        }`}
                      >
                        <Icon size={16} />
                        <span>{tab.label}</span>
                      </button>
                    );
                  })}
                </nav>
              </div>
            </div>
          </div>

          <div className="px-6 py-8 max-h-96 overflow-y-auto">
            {activeTab === 'overview' && (
              <div className="space-y-6">
                <div>
                  <h3 className="text-lg font-semibold text-gray-800 mb-3">About</h3>
                  <p className="text-gray-600 leading-relaxed">{university.description}</p>
                  <p className="text-gray-600 leading-relaxed mt-4">
                    Founded with a mission to provide world-class education, this institution has
                    become a leading center for academic excellence and research. Students from over
                    100 countries choose to study here, creating a diverse and vibrant campus
                    community.
                  </p>
                </div>

                <div>
                  <h3 className="text-lg font-semibold text-gray-800 mb-3">Quick Facts</h3>
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div className="p-4 bg-gray-50 rounded-lg">
                      <div className="text-sm text-gray-600 mb-1">Student Population</div>
                      <div className="text-lg font-semibold text-gray-800">25,000+</div>
                    </div>
                    <div className="p-4 bg-gray-50 rounded-lg">
                      <div className="text-sm text-gray-600 mb-1">International Students</div>
                      <div className="text-lg font-semibold text-gray-800">30%</div>
                    </div>
                    <div className="p-4 bg-gray-50 rounded-lg">
                      <div className="text-sm text-gray-600 mb-1">Programs Offered</div>
                      <div className="text-lg font-semibold text-gray-800">200+</div>
                    </div>
                    <div className="p-4 bg-gray-50 rounded-lg">
                      <div className="text-sm text-gray-600 mb-1">Student-Faculty Ratio</div>
                      <div className="text-lg font-semibold text-gray-800">12:1</div>
                    </div>
                  </div>
                </div>
              </div>
            )}

            {activeTab === 'programs' && (
              <div className="space-y-6">
                <h3 className="text-lg font-semibold text-gray-800">Available Programs</h3>
                <div className="space-y-4">
                  {['Bachelor Programs', 'Master Programs', 'PhD Programs'].map((level) => (
                    <div key={level}>
                      <h4 className="font-semibold text-gray-700 mb-3">{level}</h4>
                      <div className="grid grid-cols-1 md:grid-cols-2 gap-3">
                        {[
                          'Computer Science',
                          'Engineering',
                          'Business Administration',
                          'Medicine',
                          'Law',
                          'Arts & Humanities',
                        ].map((program) => (
                          <div
                            key={program}
                            className="p-3 bg-gray-50 rounded-lg hover:bg-gray-100 transition-colors cursor-pointer"
                          >
                            <div className="font-medium text-gray-800">{program}</div>
                            <div className="text-sm text-gray-600">Full-time & Part-time</div>
                          </div>
                        ))}
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            )}

            {activeTab === 'admission' && (
              <div className="space-y-6">
                <h3 className="text-lg font-semibold text-gray-800">Admission Requirements</h3>
                <div className="space-y-4">
                  <div className="p-4 border border-gray-200 rounded-lg">
                    <h4 className="font-semibold text-gray-700 mb-2">Academic Requirements</h4>
                    <ul className="space-y-2 text-gray-600">
                      <li className="flex items-start">
                        <span className="mr-2">•</span>
                        <span>Bachelor's degree or equivalent (for Master's programs)</span>
                      </li>
                      <li className="flex items-start">
                        <span className="mr-2">•</span>
                        <span>Minimum GPA: 3.0/4.0</span>
                      </li>
                      <li className="flex items-start">
                        <span className="mr-2">•</span>
                        <span>Official transcripts from all institutions attended</span>
                      </li>
                    </ul>
                  </div>

                  <div className="p-4 border border-gray-200 rounded-lg">
                    <h4 className="font-semibold text-gray-700 mb-2">English Proficiency</h4>
                    <ul className="space-y-2 text-gray-600">
                      <li className="flex items-start">
                        <span className="mr-2">•</span>
                        <span>IELTS: {university.ieltsRequirement}+ overall</span>
                      </li>
                      <li className="flex items-start">
                        <span className="mr-2">•</span>
                        <span>TOEFL: 90+ (iBT)</span>
                      </li>
                      <li className="flex items-start">
                        <span className="mr-2">•</span>
                        <span>Duolingo: 115+</span>
                      </li>
                    </ul>
                  </div>

                  <div className="p-4 border border-gray-200 rounded-lg">
                    <h4 className="font-semibold text-gray-700 mb-2">Required Documents</h4>
                    <ul className="space-y-2 text-gray-600">
                      <li className="flex items-start">
                        <span className="mr-2">•</span>
                        <span>Statement of Purpose</span>
                      </li>
                      <li className="flex items-start">
                        <span className="mr-2">•</span>
                        <span>Letters of Recommendation (2-3)</span>
                      </li>
                      <li className="flex items-start">
                        <span className="mr-2">•</span>
                        <span>Updated CV/Resume</span>
                      </li>
                      <li className="flex items-start">
                        <span className="mr-2">•</span>
                        <span>Valid Passport Copy</span>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            )}

            {activeTab === 'tuition' && (
              <div className="space-y-6">
                <h3 className="text-lg font-semibold text-gray-800">Tuition & Fees</h3>
                <div className="space-y-4">
                  <div className="p-6 bg-gradient-to-br from-blue-50 to-teal-50 rounded-lg">
                    <div className="text-sm text-gray-600 mb-2">Annual Tuition Fee</div>
                    <div className="text-3xl font-bold text-gray-800 mb-1">
                      {university.tuitionRange}
                    </div>
                    <div className="text-sm text-gray-600">Per academic year</div>
                  </div>

                  <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div className="p-4 border border-gray-200 rounded-lg">
                      <div className="text-sm text-gray-600 mb-1">Application Fee</div>
                      <div className="text-lg font-semibold text-gray-800">$100</div>
                    </div>
                    <div className="p-4 border border-gray-200 rounded-lg">
                      <div className="text-sm text-gray-600 mb-1">Living Expenses</div>
                      <div className="text-lg font-semibold text-gray-800">$12,000/year</div>
                    </div>
                  </div>

                  <div className="p-4 bg-yellow-50 border border-yellow-200 rounded-lg">
                    <p className="text-sm text-gray-700">
                      Note: Tuition fees may vary by program. Additional fees may apply for specific
                      courses, materials, and services.
                    </p>
                  </div>
                </div>
              </div>
            )}

            {activeTab === 'scholarships' && (
              <div className="space-y-6">
                <h3 className="text-lg font-semibold text-gray-800">Scholarship Opportunities</h3>
                {university.hasScholarship ? (
                  <div className="space-y-4">
                    {[
                      {
                        name: 'Merit Scholarship',
                        amount: 'Up to 50% tuition',
                        criteria: 'Based on academic excellence',
                      },
                      {
                        name: 'International Student Scholarship',
                        amount: '$5,000 - $15,000',
                        criteria: 'For outstanding international students',
                      },
                      {
                        name: 'Need-based Financial Aid',
                        amount: 'Varies',
                        criteria: 'Based on financial need assessment',
                      },
                    ].map((scholarship) => (
                      <div
                        key={scholarship.name}
                        className="p-4 border border-gray-200 rounded-lg hover:border-blue-300 transition-colors"
                      >
                        <div className="flex items-start justify-between mb-2">
                          <h4 className="font-semibold text-gray-800">{scholarship.name}</h4>
                          <span className="badge-success">{scholarship.amount}</span>
                        </div>
                        <p className="text-sm text-gray-600">{scholarship.criteria}</p>
                      </div>
                    ))}
                  </div>
                ) : (
                  <div className="text-center py-8">
                    <p className="text-gray-600">
                      No scholarships currently available for this university.
                    </p>
                  </div>
                )}
              </div>
            )}

            {activeTab === 'deadlines' && (
              <div className="space-y-6">
                <h3 className="text-lg font-semibold text-gray-800">Application Deadlines</h3>
                <div className="space-y-4">
                  {[
                    { term: 'Fall 2025', deadline: 'March 1, 2025', status: 'upcoming' },
                    { term: 'Spring 2026', deadline: 'October 1, 2025', status: 'open' },
                  ].map((term) => (
                    <div
                      key={term.term}
                      className="p-4 border border-gray-200 rounded-lg flex items-center justify-between"
                    >
                      <div>
                        <div className="font-semibold text-gray-800 mb-1">{term.term}</div>
                        <div className="text-sm text-gray-600">Deadline: {term.deadline}</div>
                      </div>
                      <span
                        className={`badge ${
                          term.status === 'open' ? 'badge-success' : 'badge-primary'
                        }`}
                      >
                        {term.status === 'open' ? 'Applications Open' : 'Upcoming'}
                      </span>
                    </div>
                  ))}
                </div>

                <div className="p-4 bg-blue-50 border border-blue-200 rounded-lg">
                  <h4 className="font-semibold text-blue-900 mb-2">Important Dates</h4>
                  <ul className="space-y-2 text-sm text-blue-800">
                    <li className="flex items-start">
                      <span className="mr-2">•</span>
                      <span>Early Decision: November 1</span>
                    </li>
                    <li className="flex items-start">
                      <span className="mr-2">•</span>
                      <span>Regular Decision: January 15</span>
                    </li>
                    <li className="flex items-start">
                      <span className="mr-2">•</span>
                      <span>Decision Notification: Within 4-6 weeks</span>
                    </li>
                  </ul>
                </div>
              </div>
            )}
          </div>

          <div className="sticky bottom-0 px-6 py-4 bg-gray-50 border-t border-gray-200 flex items-center justify-between">
            <button onClick={onClose} className="btn-ghost">
              Close
            </button>
            <div className="flex items-center space-x-3">
              <button className="btn-secondary">Save University</button>
              <button className="btn-primary">Apply Now</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
