import { X, MapPin, Globe, DollarSign, Calendar, Award, BookOpen, GraduationCap, ExternalLink, Users, TrendingUp } from 'lucide-react';
import { useState } from 'react';
import type { University } from '../lib/database.types';
import { getUniversityImageUrl } from '../data/universityImages';

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

  // Generate a fallback search URL if no website is stored
  const websiteUrl = university.website ||
    `https://www.google.com/search?q=${encodeURIComponent(university.name + ' official website')}`;
  const admissionUrl = university.admission_url ||
    `https://www.google.com/search?q=${encodeURIComponent(university.name + ' admission apply')}`;

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

  // Use the same smart helper as UniversityCard: named → country-pool → generic-pool
  const imageUrl = getUniversityImageUrl(university.name, university.country);


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

            <div className="relative px-6 pb-6">
              <div className="flex flex-col sm:flex-row sm:items-start gap-4 sm:gap-6">
                <div className="-mt-12 sm:-mt-16 w-32 h-32 bg-white rounded-2xl shadow-xl overflow-hidden border-4 border-white flex-shrink-0 relative z-10">
                  <img
                    src={imageUrl}
                    alt={university.name}
                    className="w-full h-full object-cover"
                    onError={(e) => {
                      e.currentTarget.onerror = null;
                      e.currentTarget.src = 'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=400&h=400&fit=crop';
                    }}
                  />
                </div>
                <div className="flex-1 pt-2 sm:pt-4">
                  <h2 className="text-3xl font-bold text-gray-800 mb-2 leading-tight">
                    {university.name}
                  </h2>
                  <div className="flex flex-wrap items-center gap-3">
                    <div className="flex items-center space-x-2 text-gray-600">
                      <MapPin size={16} />
                      <span className="text-sm">
                        <span className="mr-1">{university.country_flag}</span>
                        {university.location}, {university.country}
                      </span>
                    </div>
                    {university.ranking && (
                      <span className="text-xs font-medium px-2 py-1 rounded-full bg-yellow-100 text-yellow-800 border border-yellow-200">
                        Rank #{university.ranking}
                      </span>
                    )}
                    {aiRecommendation && getRecommendationBadge()}
                  </div>
                  <div className="flex items-center gap-4 mt-3">
                    <a href={websiteUrl} target="_blank" rel="noopener noreferrer" className="text-sm font-medium text-blue-600 hover:text-blue-800 flex items-center gap-1 transition-colors">
                      <Globe size={14} /> Main Website
                    </a>
                    <a href={admissionUrl} target="_blank" rel="noopener noreferrer" className="text-sm font-medium text-teal-600 hover:text-teal-800 flex items-center gap-1 transition-colors">
                      <ExternalLink size={14} /> Admission Portal
                    </a>
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
                </div>

                <div>
                  <h3 className="text-lg font-semibold text-gray-800 mb-3">Quick Facts</h3>
                  <div className="grid grid-cols-2 md:grid-cols-3 gap-4">
                    <div className="p-4 bg-blue-50 rounded-lg border border-blue-100">
                      <div className="flex items-center gap-2 text-sm text-blue-600 mb-1">
                        <TrendingUp size={14} />
                        World Ranking
                      </div>
                      <div className="text-lg font-bold text-gray-800">
                        {university.ranking ? `# ${university.ranking}` : 'N/A'}
                      </div>
                    </div>
                    <div className="p-4 bg-gray-50 rounded-lg">
                      <div className="flex items-center gap-2 text-sm text-gray-600 mb-1">
                        <Users size={14} />
                        Student Population
                      </div>
                      <div className="text-lg font-bold text-gray-800">
                        {university.student_population
                          ? university.student_population.toLocaleString()
                          : 'N/A'}
                      </div>
                    </div>
                    <div className="p-4 bg-gray-50 rounded-lg">
                      <div className="text-sm text-gray-600 mb-1">International Students</div>
                      <div className="text-lg font-bold text-gray-800">
                        {university.international_students_pct
                          ? `${university.international_students_pct}%`
                          : 'N/A'}
                      </div>
                    </div>
                    <div className="p-4 bg-gray-50 rounded-lg">
                      <div className="text-sm text-gray-600 mb-1">Programs Offered</div>
                      <div className="text-lg font-bold text-gray-800">
                        {university.programs_offered ? `${university.programs_offered}+` : 'N/A'}
                      </div>
                    </div>
                    <div className="p-4 bg-gray-50 rounded-lg">
                      <div className="text-sm text-gray-600 mb-1">Acceptance Rate</div>
                      <div className="text-lg font-bold text-gray-800">
                        {university.acceptance_rate ? `${university.acceptance_rate}%` : 'N/A'}
                      </div>
                    </div>
                    <div className="p-4 bg-green-50 rounded-lg border border-green-100">
                      <div className="text-sm text-green-600 mb-1">IELTS Required</div>
                      <div className="text-lg font-bold text-gray-800">
                        {university.ielts_requirement}+
                      </div>
                    </div>
                  </div>
                </div>

                {university.website && (
                  <div>
                    <h3 className="text-lg font-semibold text-gray-800 mb-3">Website</h3>
                    <a
                      href={university.website}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="flex items-center gap-2 text-blue-600 hover:text-blue-700 transition-colors"
                    >
                      <Globe size={16} />
                      <span>{university.website}</span>
                    </a>
                  </div>
                )}
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
                        <span>IELTS: {university.ielts_requirement}+ overall</span>
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
                      <li className="flex items-start"><span className="mr-2">•</span><span>Statement of Purpose</span></li>
                      <li className="flex items-start"><span className="mr-2">•</span><span>Letters of Recommendation (2-3)</span></li>
                      <li className="flex items-start"><span className="mr-2">•</span><span>Updated CV/Resume</span></li>
                      <li className="flex items-start"><span className="mr-2">•</span><span>Valid Passport Copy</span></li>
                    </ul>
                  </div>
                  {/* Admission Portal Link */}
                  {university.admission_url && (
                    <div className="p-5 bg-gradient-to-br from-blue-600 to-teal-600 rounded-xl text-white">
                      <div className="flex items-center gap-3 mb-3">
                        <ExternalLink size={22} />
                        <h4 className="font-semibold text-lg">Ready to Apply?</h4>
                      </div>
                      <p className="text-blue-100 text-sm mb-4">
                        Start your application directly on the official university admission portal.
                      </p>
                      <a
                        href={university.admission_url}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="inline-flex items-center gap-2 bg-white text-blue-700 font-semibold px-5 py-2.5 rounded-lg hover:bg-blue-50 transition-colors"
                      >
                        <ExternalLink size={16} />
                        Apply Now — Official Portal
                      </a>
                    </div>
                  )}
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
                      {university.tuition_range}
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
                </div>
              </div>
            )}

            {activeTab === 'scholarships' && (
              <div className="space-y-6">
                <h3 className="text-lg font-semibold text-gray-800">Scholarship Opportunities</h3>
                {university.has_scholarship ? (
                  <div className="space-y-4">
                    {[
                      { name: 'Merit Scholarship', amount: 'Up to 50% tuition', criteria: 'Based on academic excellence' },
                      { name: 'International Student Scholarship', amount: '$5,000 - $15,000', criteria: 'For outstanding international students' },
                      { name: 'Need-based Financial Aid', amount: 'Varies', criteria: 'Based on financial need assessment' },
                    ].map((scholarship) => (
                      <div key={scholarship.name} className="p-4 border border-gray-200 rounded-lg hover:border-blue-300 transition-colors">
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
                    <p className="text-gray-600">No scholarships currently available for this university.</p>
                  </div>
                )}
              </div>
            )}

            {activeTab === 'deadlines' && (
              <div className="space-y-6">
                <h3 className="text-lg font-semibold text-gray-800">Application Deadlines</h3>
                <div className="space-y-4">
                  <div className="p-4 border border-gray-200 rounded-lg flex items-center justify-between">
                    <div>
                      <div className="font-semibold text-gray-800 mb-1">Main Deadline</div>
                      <div className="text-sm text-gray-600">Deadline: {university.deadline}</div>
                    </div>
                    <span className="badge badge-primary">Upcoming</span>
                  </div>

                  <div className="p-4 bg-blue-50 border border-blue-200 rounded-lg">
                    <h4 className="font-semibold text-blue-900 mb-2">Important Dates</h4>
                    <ul className="space-y-2 text-sm text-blue-800">
                      <li className="flex items-start"><span className="mr-2">•</span><span>Early Decision: November 1</span></li>
                      <li className="flex items-start"><span className="mr-2">•</span><span>Regular Decision: January 15</span></li>
                      <li className="flex items-start"><span className="mr-2">•</span><span>Decision Notification: Within 4-6 weeks</span></li>
                    </ul>
                  </div>
                </div>
              </div>
            )}
          </div>

          <div className="sticky bottom-0 px-6 py-4 bg-gray-50 border-t border-gray-200 flex items-center justify-between">
            <button onClick={onClose} className="btn-ghost">
              Close
            </button>
            <div className="flex items-center space-x-3">
              <a
                href={admissionUrl}
                target="_blank"
                rel="noopener noreferrer"
                className="btn-primary flex items-center gap-2"
              >
                <ExternalLink size={16} />
                Apply Now
              </a>
              <a
                href={websiteUrl}
                target="_blank"
                rel="noopener noreferrer"
                className="btn-ghost flex items-center gap-2"
              >
                <Globe size={16} />
                Visit Website
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
