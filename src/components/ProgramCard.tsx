import { Heart, Calendar, DollarSign, Award, Globe } from 'lucide-react';
import { useState } from 'react';
import { Program } from '../data/mockPrograms';

interface ProgramCardProps {
    program: Program;
    onViewDetails: (program: Program) => void;
    isSaved?: boolean;
    onToggleSave?: (id: string) => void;
}

export default function ProgramCard({
    program,
    onViewDetails,
    isSaved = false,
    onToggleSave,
}: ProgramCardProps) {
    const [saved, setSaved] = useState(isSaved);

    const handleSaveToggle = (e: React.MouseEvent) => {
        e.stopPropagation();
        setSaved(!saved);
        onToggleSave?.(program.id);
    };

    const getUrgencyColor = (urgency?: string) => {
        switch (urgency) {
            case 'high':
                return 'bg-red-100 text-red-700 border-red-200';
            case 'medium':
                return 'bg-orange-100 text-orange-700 border-orange-200';
            case 'low':
                return 'bg-green-100 text-green-700 border-green-200';
            default:
                return 'bg-gray-100 text-gray-700 border-gray-200';
        }
    };

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

    return (
        <div className="card group cursor-pointer" onClick={() => onViewDetails(program)}>
            <div className="relative">
                <div className="h-48 bg-gradient-to-br from-purple-50 to-blue-50 overflow-hidden">
                    <img
                        src={program.image}
                        alt={program.name}
                        className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
                        onError={(e) => {
                            e.currentTarget.src = 'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=400&h=400&fit=crop';
                        }}
                    />
                </div>
                <button
                    onClick={handleSaveToggle}
                    className="absolute top-4 right-4 p-2 bg-white rounded-full shadow-md hover:shadow-lg transition-all duration-200 z-10"
                    aria-label={saved ? 'Unsave program' : 'Save program'}
                >
                    <Heart
                        size={20}
                        className={`transition-colors ${saved ? 'fill-red-500 text-red-500' : 'text-gray-400'
                            }`}
                    />
                </button>
            </div>

            <div className="p-5">
                <div className="flex items-start justify-between mb-3">
                    <h3 className="text-xl font-semibold text-gray-800 group-hover:text-blue-600 transition-colors line-clamp-2">
                        {program.name}
                    </h3>
                </div>

                <div className="flex items-center gap-2 mb-3">
                    <span
                        className={`text-xs font-medium px-2 py-1 rounded-full border ${getProgramTypeColor(
                            program.type
                        )}`}
                    >
                        {program.type.charAt(0).toUpperCase() + program.type.slice(1)}
                    </span>
                    {program.hasFullFunding && (
                        <span className="badge-success text-xs">Full Funding</span>
                    )}
                </div>

                <div className="flex items-center space-x-2 mb-3">
                    <Globe size={16} className="text-gray-400" />
                    <span className="text-sm text-gray-600">
                        {program.countryFlags.map((flag, idx) => (
                            <span key={idx} className="mr-1">
                                {flag}
                            </span>
                        ))}
                        {program.countries.join(', ')}
                    </span>
                </div>

                <p className="text-sm text-gray-600 mb-4 line-clamp-2">{program.description}</p>

                <div className="space-y-2 mb-4">
                    <div className="flex items-center justify-between">
                        <div className="flex items-center space-x-2">
                            <DollarSign size={16} className="text-gray-400" />
                            <span className="text-sm text-gray-600">Funding</span>
                        </div>
                        <span className="text-sm font-semibold text-gray-800">
                            {program.fundingAmount}
                        </span>
                    </div>

                    <div className="flex items-center justify-between">
                        <div className="flex items-center space-x-2">
                            <Award size={16} className="text-gray-400" />
                            <span className="text-sm text-gray-600">Level</span>
                        </div>
                        <span className="text-sm font-semibold text-gray-800">
                            {program.programLevel.join(', ')}
                        </span>
                    </div>

                    <div className="flex items-center justify-between">
                        <div className="flex items-center space-x-2">
                            <Calendar size={16} className="text-gray-400" />
                            <span className="text-sm text-gray-600">Deadline</span>
                        </div>
                        <span
                            className={`text-xs font-medium px-2 py-1 rounded-full border ${getUrgencyColor(
                                program.urgency
                            )}`}
                        >
                            {program.deadline}
                        </span>
                    </div>
                </div>

                <button
                    onClick={(e) => {
                        e.stopPropagation();
                        onViewDetails(program);
                    }}
                    className="w-full btn-primary text-sm"
                >
                    View Details
                </button>
            </div>
        </div>
    );
}
