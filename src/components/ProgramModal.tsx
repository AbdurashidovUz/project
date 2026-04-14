import { X, Globe, Calendar, Award, BookOpen, Users, FileText } from 'lucide-react';
import { useState } from 'react';
import { Program } from '../data/mockPrograms';

interface ProgramModalProps {
    program: Program | null;
    isOpen: boolean;
    onClose: () => void;
}

export default function ProgramModal({ program, isOpen, onClose }: ProgramModalProps) {
    const [activeTab, setActiveTab] = useState<
        'overview' | 'eligibility' | 'benefits' | 'application' | 'deadlines'
    >('overview');

    if (!isOpen || !program) return null;

    const getProgramTypeColor = (type: string) => {
        switch (type) {
            case 'scholarship':
                return 'bg-blue-100 text-blue-700 border-blue-200';
            case 'exchange':
                return 'bg-purple-100 text-purple-700 border-purple-200';
            case 'fellowship':
                return 'bg-teal-100 text-teal-700 border-teal-200';
            default:
                return 'bg-gray-100 text-gray-700 border-gray-200';
        }
    };

    const tabs = [
        { id: 'overview', label: 'Overview', icon: BookOpen },
        { id: 'eligibility', label: 'Eligibility', icon: Users },
        { id: 'benefits', label: 'Benefits', icon: Award },
        { id: 'application', label: 'Application', icon: FileText },
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
                        <div className="relative h-32 bg-gradient-to-br from-purple-600 to-blue-600">
                            <button
                                onClick={onClose}
                                className="absolute top-4 right-4 p-2 bg-white/20 hover:bg-white/30 rounded-full transition-colors backdrop-blur-sm"
                                aria-label="Close modal"
                            >
                                <X size={24} className="text-white" />
                            </button>
                        </div>

                        <div className="relative px-6 pb-6">
                            <div className="flex items-end space-x-6 -mt-12">
                                <div className="w-32 h-32 bg-white rounded-2xl shadow-xl overflow-hidden border-4 border-white flex-shrink-0">
                                    <img
                                        src={program.image}
                                        alt={program.name}
                                        className="w-full h-full object-cover"
                                        onError={(e) => {
                                            e.currentTarget.src = 'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=400&h=400&fit=crop';
                                        }}
                                    />
                                </div>
                                <div className="flex-1 pb-2">
                                    <h2 className="text-3xl font-bold text-gray-800 mb-2 leading-tight">{program.name}</h2>
                                    <div className="flex flex-wrap items-center gap-3">
                                        <div className="flex items-center space-x-2 text-gray-600">
                                            <Globe size={16} />
                                            <span className="text-sm">
                                                {program.countryFlags.map((flag, idx) => (
                                                    <span key={idx} className="mr-1">
                                                        {flag}
                                                    </span>
                                                ))}
                                                {program.countries.join(', ')}
                                            </span>
                                        </div>
                                        <span
                                            className={`text-xs font-medium px-3 py-1 rounded-full border ${getProgramTypeColor(
                                                program.type
                                            )}`}
                                        >
                                            {program.type.charAt(0).toUpperCase() + program.type.slice(1)}
                                        </span>
                                        {program.hasFullFunding && (
                                            <span className="badge-success">Full Funding</span>
                                        )}
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
                                                className={`flex items-center space-x-2 px-4 py-3 text-sm font-medium border-b-2 transition-colors whitespace-nowrap ${activeTab === tab.id
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
                                    <h3 className="text-lg font-semibold text-gray-800 mb-3">About the Program</h3>
                                    <p className="text-gray-600 leading-relaxed">{program.description}</p>
                                </div>

                                <div>
                                    <h3 className="text-lg font-semibold text-gray-800 mb-3">Quick Facts</h3>
                                    <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                                        <div className="p-4 bg-gray-50 rounded-lg">
                                            <div className="text-sm text-gray-600 mb-1">Funding Amount</div>
                                            <div className="text-lg font-semibold text-gray-800">{program.fundingAmount}</div>
                                        </div>
                                        <div className="p-4 bg-gray-50 rounded-lg">
                                            <div className="text-sm text-gray-600 mb-1">Program Duration</div>
                                            <div className="text-lg font-semibold text-gray-800">{program.duration}</div>
                                        </div>
                                        <div className="p-4 bg-gray-50 rounded-lg">
                                            <div className="text-sm text-gray-600 mb-1">Program Level</div>
                                            <div className="text-lg font-semibold text-gray-800">
                                                {program.programLevel.join(', ')}
                                            </div>
                                        </div>
                                        <div className="p-4 bg-gray-50 rounded-lg">
                                            <div className="text-sm text-gray-600 mb-1">Application Deadline</div>
                                            <div className="text-lg font-semibold text-gray-800">{program.deadline}</div>
                                        </div>
                                    </div>
                                </div>

                                <div>
                                    <h3 className="text-lg font-semibold text-gray-800 mb-3">Fields of Study</h3>
                                    <div className="flex flex-wrap gap-2">
                                        {program.fieldsOfStudy.map((field) => (
                                            <span
                                                key={field}
                                                className="px-3 py-1 bg-blue-50 text-blue-700 rounded-full text-sm font-medium"
                                            >
                                                {field}
                                            </span>
                                        ))}
                                    </div>
                                </div>
                            </div>
                        )}

                        {activeTab === 'eligibility' && (
                            <div className="space-y-6">
                                <h3 className="text-lg font-semibold text-gray-800">Eligibility Criteria</h3>
                                <div className="space-y-4">
                                    {program.eligibility.gpa && (
                                        <div className="p-4 border border-gray-200 rounded-lg">
                                            <h4 className="font-semibold text-gray-700 mb-2">Academic Requirements</h4>
                                            <ul className="space-y-2 text-gray-600">
                                                <li className="flex items-start">
                                                    <span className="mr-2">•</span>
                                                    <span>Minimum GPA: {program.eligibility.gpa}/4.0</span>
                                                </li>
                                            </ul>
                                        </div>
                                    )}

                                    {program.eligibility.ieltsRequirement && (
                                        <div className="p-4 border border-gray-200 rounded-lg">
                                            <h4 className="font-semibold text-gray-700 mb-2">English Proficiency</h4>
                                            <ul className="space-y-2 text-gray-600">
                                                <li className="flex items-start">
                                                    <span className="mr-2">•</span>
                                                    <span>IELTS: {program.eligibility.ieltsRequirement}+ overall</span>
                                                </li>
                                                <li className="flex items-start">
                                                    <span className="mr-2">•</span>
                                                    <span>TOEFL or equivalent accepted</span>
                                                </li>
                                            </ul>
                                        </div>
                                    )}

                                    {program.eligibility.ageLimit && (
                                        <div className="p-4 border border-gray-200 rounded-lg">
                                            <h4 className="font-semibold text-gray-700 mb-2">Age Requirement</h4>
                                            <p className="text-gray-600">{program.eligibility.ageLimit}</p>
                                        </div>
                                    )}

                                    {program.eligibility.nationality && program.eligibility.nationality.length > 0 && (
                                        <div className="p-4 border border-gray-200 rounded-lg">
                                            <h4 className="font-semibold text-gray-700 mb-2">Nationality</h4>
                                            <p className="text-gray-600">{program.eligibility.nationality.join(', ')}</p>
                                        </div>
                                    )}

                                    {program.eligibility.other && program.eligibility.other.length > 0 && (
                                        <div className="p-4 border border-gray-200 rounded-lg">
                                            <h4 className="font-semibold text-gray-700 mb-2">Additional Requirements</h4>
                                            <ul className="space-y-2 text-gray-600">
                                                {program.eligibility.other.map((req, idx) => (
                                                    <li key={idx} className="flex items-start">
                                                        <span className="mr-2">•</span>
                                                        <span>{req}</span>
                                                    </li>
                                                ))}
                                            </ul>
                                        </div>
                                    )}
                                </div>
                            </div>
                        )}

                        {activeTab === 'benefits' && (
                            <div className="space-y-6">
                                <h3 className="text-lg font-semibold text-gray-800">Program Benefits</h3>
                                <div className="space-y-3">
                                    {program.benefits.map((benefit, idx) => (
                                        <div
                                            key={idx}
                                            className="p-4 border border-gray-200 rounded-lg hover:border-blue-300 transition-colors flex items-start"
                                        >
                                            <Award size={20} className="text-blue-600 mr-3 mt-0.5 flex-shrink-0" />
                                            <span className="text-gray-700">{benefit}</span>
                                        </div>
                                    ))}
                                </div>

                                <div className="p-4 bg-green-50 border border-green-200 rounded-lg">
                                    <h4 className="font-semibold text-green-900 mb-2">Funding Coverage</h4>
                                    <p className="text-sm text-green-800">
                                        {program.hasFullFunding
                                            ? 'This program provides full funding covering tuition, living expenses, and additional allowances.'
                                            : 'This program provides partial funding. Additional financial resources may be required.'}
                                    </p>
                                </div>
                            </div>
                        )}

                        {activeTab === 'application' && (
                            <div className="space-y-6">
                                <h3 className="text-lg font-semibold text-gray-800">Application Process</h3>
                                <div className="p-4 border border-gray-200 rounded-lg">
                                    <p className="text-gray-600 leading-relaxed">{program.applicationProcess}</p>
                                </div>

                                <div className="p-4 bg-blue-50 border border-blue-200 rounded-lg">
                                    <h4 className="font-semibold text-blue-900 mb-2">Official Website</h4>
                                    <a
                                        href={program.website}
                                        target="_blank"
                                        rel="noopener noreferrer"
                                        className="text-blue-600 hover:text-blue-800 underline text-sm break-all"
                                    >
                                        {program.website}
                                    </a>
                                </div>

                                <div className="p-4 bg-yellow-50 border border-yellow-200 rounded-lg">
                                    <h4 className="font-semibold text-yellow-900 mb-2">Important Notes</h4>
                                    <ul className="space-y-2 text-sm text-yellow-800">
                                        <li className="flex items-start">
                                            <span className="mr-2">•</span>
                                            <span>Start your application well before the deadline</span>
                                        </li>
                                        <li className="flex items-start">
                                            <span className="mr-2">•</span>
                                            <span>Ensure all required documents are prepared in advance</span>
                                        </li>
                                        <li className="flex items-start">
                                            <span className="mr-2">•</span>
                                            <span>Check the official website for the most up-to-date information</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        )}

                        {activeTab === 'deadlines' && (
                            <div className="space-y-6">
                                <h3 className="text-lg font-semibold text-gray-800">Application Deadline</h3>
                                <div className="p-6 bg-gradient-to-br from-purple-50 to-blue-50 rounded-lg">
                                    <div className="text-sm text-gray-600 mb-2">Application Deadline</div>
                                    <div className="text-3xl font-bold text-gray-800 mb-1">{program.deadline}</div>
                                    {program.urgency === 'high' && (
                                        <div className="mt-3">
                                            <span className="inline-flex items-center px-3 py-1 rounded-full text-sm font-semibold bg-red-100 text-red-800 border border-red-200">
                                                ⚠️ Deadline Approaching Soon
                                            </span>
                                        </div>
                                    )}
                                </div>

                                <div className="p-4 bg-blue-50 border border-blue-200 rounded-lg">
                                    <h4 className="font-semibold text-blue-900 mb-2">Timeline Tips</h4>
                                    <ul className="space-y-2 text-sm text-blue-800">
                                        <li className="flex items-start">
                                            <span className="mr-2">•</span>
                                            <span>Begin preparing documents 2-3 months before the deadline</span>
                                        </li>
                                        <li className="flex items-start">
                                            <span className="mr-2">•</span>
                                            <span>Request recommendation letters at least 4 weeks in advance</span>
                                        </li>
                                        <li className="flex items-start">
                                            <span className="mr-2">•</span>
                                            <span>Submit your application at least 1 week before the deadline</span>
                                        </li>
                                        <li className="flex items-start">
                                            <span className="mr-2">•</span>
                                            <span>Decision notifications typically arrive within 2-4 months</span>
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
                            <button className="btn-secondary">Save Program</button>
                            <a
                                href={program.website}
                                target="_blank"
                                rel="noopener noreferrer"
                                className="btn-primary"
                            >
                                Visit Website
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
}
