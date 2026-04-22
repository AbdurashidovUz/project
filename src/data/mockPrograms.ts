export interface Program {
    id: string;
    name: string;
    type: 'scholarship' | 'exchange' | 'fellowship';
    description: string;
    countries: string[];
    countryFlags: string[];
    fundingAmount: string;
    programLevel: string[];
    duration: string;
    fieldsOfStudy: string[];
    eligibility: {
        gpa?: number;
        ieltsRequirement?: number;
        ageLimit?: string;
        nationality?: string[];
        other?: string[];
    };
    deadline: string;
    urgency?: 'high' | 'medium' | 'low';
    benefits: string[];
    applicationProcess: string;
    website: string;
    image: string;
    hasFullFunding: boolean;
}

export const mockPrograms: Program[] = [
    {
        id: '1',
        name: 'Erasmus Mundus Joint Master Degrees',
        type: 'scholarship',
        description:
            'Prestigious international study programmes jointly delivered by consortia of higher education institutions. Offers full scholarships covering tuition, travel, and living expenses for students worldwide.',
        countries: ['Multiple EU Countries'],
        countryFlags: ['🇪🇺'],
        fundingAmount: '€25,000-€29,000/year',
        programLevel: ['Master\'s'],
        duration: '1-2 years',
        fieldsOfStudy: [
            'Engineering',
            'Computer Science',
            'Business',
            'Social Sciences',
            'Environmental Studies',
            'Health Sciences',
        ],
        eligibility: {
            ieltsRequirement: 6.5,
            other: [
                'Bachelor\'s degree or equivalent',
                'Open to all nationalities',
                'Academic excellence required',
            ],
        },
        deadline: 'Jan 15, 2026',
        urgency: 'high',
        benefits: [
            'Full tuition coverage',
            'Monthly stipend (€1,400)',
            'Travel allowance',
            'Insurance coverage',
            'Study in 2-3 European countries',
        ],
        applicationProcess:
            'Apply directly through the Erasmus Mundus catalogue. Each programme has its own application portal and requirements.',
        website: 'https://www.eacea.ec.europa.eu/scholarships/erasmus-mundus-catalogue_en',
        image: 'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=400&h=400&fit=crop',
        hasFullFunding: true,
    },
    {
        id: '2',
        name: 'Stipendium Hungaricum Scholarship',
        type: 'scholarship',
        description:
            'Hungarian government scholarship programme offering full scholarships for international students to study in Hungary at various academic levels.',
        countries: ['Hungary'],
        countryFlags: ['🇭🇺'],
        fundingAmount: 'Full tuition + monthly stipend',
        programLevel: ['Bachelor\'s', 'Master\'s', 'PhD'],
        duration: '1-6 years (depending on level)',
        fieldsOfStudy: [
            'All fields available',
            'Medicine',
            'Engineering',
            'Arts',
            'Sciences',
            'Humanities',
        ],
        eligibility: {
            other: [
                'Citizens of participating countries',
                'Good academic standing',
                'Age limits vary by level',
                'No Hungarian citizenship',
            ],
        },
        deadline: 'Feb 16, 2026',
        urgency: 'high',
        benefits: [
            'Full tuition waiver',
            'Monthly stipend (€430-€550)',
            'Free accommodation or housing allowance',
            'Health insurance',
        ],
        applicationProcess:
            'Apply through the Tempus Public Foundation online portal. Requires nomination from sending country or direct application.',
        website: 'https://stipendiumhungaricum.hu/',
        image: 'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=400&h=400&fit=crop',
        hasFullFunding: true,
    },
    {
        id: '3',
        name: 'DAAD Scholarships',
        type: 'scholarship',
        description:
            'German Academic Exchange Service offers numerous scholarship programs for international students and researchers to study in Germany.',
        countries: ['Germany'],
        countryFlags: ['🇩🇪'],
        fundingAmount: '€850-€1,200/month',
        programLevel: ['Master\'s', 'PhD', 'Postdoctoral'],
        duration: '1-4 years',
        fieldsOfStudy: [
            'Engineering',
            'Natural Sciences',
            'Social Sciences',
            'Arts',
            'Development Cooperation',
        ],
        eligibility: {
            gpa: 3.0,
            ieltsRequirement: 6.0,
            other: [
                'Bachelor\'s degree completed',
                'At least 2 years work experience (some programs)',
                'Strong academic record',
            ],
        },
        deadline: 'Multiple deadlines throughout the year',
        urgency: 'medium',
        benefits: [
            'Monthly scholarship payment',
            'Health insurance',
            'Travel allowance',
            'Study and research allowance',
            'German language course support',
        ],
        applicationProcess:
            'Apply through the DAAD portal. Different programs have different requirements and deadlines.',
        website: 'https://www.daad.de/en/',
        image: 'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=400&h=400&fit=crop',
        hasFullFunding: false,
    },
    {
        id: '4',
        name: 'Chevening Scholarships',
        type: 'scholarship',
        description:
            'UK government\'s global scholarship programme funded by the Foreign, Commonwealth and Development Office. Enables outstanding emerging leaders to pursue one-year master\'s degrees in the UK.',
        countries: ['United Kingdom'],
        countryFlags: ['🇬🇧'],
        fundingAmount: 'Full funding',
        programLevel: ['Master\'s'],
        duration: '1 year',
        fieldsOfStudy: [
            'All fields',
            'Public Policy',
            'International Relations',
            'Business',
            'Law',
            'STEM',
        ],
        eligibility: {
            ieltsRequirement: 6.5,
            other: [
                'Citizen of Chevening-eligible country',
                'At least 2 years work experience',
                'Bachelor\'s degree',
                'Leadership potential',
                'Return to home country for 2 years after study',
            ],
        },
        deadline: 'Nov 5, 2026',
        urgency: 'high',
        benefits: [
            'Full tuition fees',
            'Monthly living allowance',
            'Return airfare',
            'Arrival and departure allowances',
            'Visa application cost',
            'Access to exclusive networking events',
        ],
        applicationProcess:
            'Apply online through the Chevening website. Requires three course choices, references, and essays.',
        website: 'https://www.chevening.org/',
        image: 'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=400&h=400&fit=crop',
        hasFullFunding: true,
    },
    {
        id: '5',
        name: 'Fulbright Foreign Student Program',
        type: 'scholarship',
        description:
            'Flagship international educational exchange program sponsored by the U.S. government, providing scholarships for graduate students, young professionals and artists.',
        countries: ['United States'],
        countryFlags: ['🇺🇸'],
        fundingAmount: 'Full funding',
        programLevel: ['Master\'s', 'PhD'],
        duration: '1-2 years (Master\'s), 3-5 years (PhD)',
        fieldsOfStudy: [
            'All fields',
            'Sciences',
            'Arts',
            'Humanities',
            'Social Sciences',
            'Professional Studies',
        ],
        eligibility: {
            gpa: 3.0,
            ieltsRequirement: 7.0,
            other: [
                'Citizen of participating country',
                'Bachelor\'s degree or equivalent',
                'No U.S. citizenship or permanent residency',
                'Demonstrated leadership potential',
            ],
        },
        deadline: 'Varies by country (typically Oct-Dec 2026)',
        urgency: 'medium',
        benefits: [
            'Full tuition',
            'Living stipend',
            'Round-trip airfare',
            'Health insurance',
            'Accident coverage',
            'Support for books and research',
        ],
        applicationProcess:
            'Apply through Fulbright Commission or U.S. Embassy in your home country. Requires academic records, references, and statement of purpose.',
        website: 'https://foreign.fulbrightonline.org/',
        image: 'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=400&fit=crop',
        hasFullFunding: true,
    },
    {
        id: '6',
        name: 'Swedish Institute Scholarships',
        type: 'scholarship',
        description:
            'Scholarships for global professionals to pursue master\'s studies in Sweden, promoting leadership development and sustainable development.',
        countries: ['Sweden'],
        countryFlags: ['🇸🇪'],
        fundingAmount: 'Full funding',
        programLevel: ['Master\'s'],
        duration: '1-2 years',
        fieldsOfStudy: [
            'Sustainability',
            'Innovation',
            'Human Rights',
            'Technology',
            'Business',
            'Social Sciences',
        ],
        eligibility: {
            ieltsRequirement: 6.5,
            other: [
                'Citizens of eligible countries',
                'At least 3,000 hours work experience',
                'Bachelor\'s degree',
                'Demonstrated leadership experience',
            ],
        },
        deadline: 'Feb 20, 2026',
        urgency: 'high',
        benefits: [
            'Full tuition coverage',
            'Living expenses (SEK 12,000/month)',
            'Travel grant',
            'Insurance',
            'Network events and activities',
        ],
        applicationProcess:
            'Apply through University Admissions in Sweden, then submit SI scholarship application.',
        website: 'https://si.se/en/apply/scholarships/',
        image: 'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=400&h=400&fit=crop',
        hasFullFunding: true,
    },
    {
        id: '7',
        name: 'Australia Awards Scholarships',
        type: 'scholarship',
        description:
            'Long-term development awards administered by the Australian Government offering opportunities for people from developing countries to undertake full-time undergraduate or postgraduate study.',
        countries: ['Australia'],
        countryFlags: ['🇦🇺'],
        fundingAmount: 'Full funding',
        programLevel: ['Bachelor\'s', 'Master\'s', 'PhD'],
        duration: '2-4 years',
        fieldsOfStudy: [
            'All fields aligned with development priorities',
            'Agriculture',
            'Education',
            'Health',
            'Infrastructure',
            'Governance',
        ],
        eligibility: {
            ieltsRequirement: 6.5,
            other: [
                'Citizen of eligible country',
                'Not hold Australian citizenship or permanent residency',
                'Meet minimum academic requirements',
                'Commitment to return home for 2 years',
            ],
        },
        deadline: 'Apr 30, 2026',
        urgency: 'medium',
        benefits: [
            'Full tuition fees',
            'Return air travel',
            'Establishment allowance',
            'Living allowance (fortnightly)',
            'Health insurance',
            'Pre-course English training if required',
        ],
        applicationProcess:
            'Apply through the Australia Awards online application system. Country-specific requirements apply.',
        website: 'https://www.australiaawards.gov.au/',
        image: 'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=400&h=400&fit=crop',
        hasFullFunding: true,
    },
    {
        id: '8',
        name: 'Eiffel Excellence Scholarship',
        type: 'scholarship',
        description:
            'French Ministry for Europe and Foreign Affairs scholarship program to attract top international students to French higher education institutions.',
        countries: ['France'],
        countryFlags: ['🇫🇷'],
        fundingAmount: '€1,400/month (Master\'s), €1,700/month (PhD)',
        programLevel: ['Master\'s', 'PhD'],
        duration: '1-3 years',
        fieldsOfStudy: [
            'Engineering',
            'Economics and Management',
            'Law and Political Science',
            'Exact Sciences',
        ],
        eligibility: {
            ageLimit: 'Under 30 (Master\'s), Under 35 (PhD)',
            other: [
                'Non-French nationals',
                'Nominated by French higher education institution',
                'Excellent academic record',
            ],
        },
        deadline: 'Jan 10, 2026',
        urgency: 'high',
        benefits: [
            'Monthly allowance',
            'Return travel ticket',
            'Health insurance',
            'Cultural activities',
            'Accommodation support (not guaranteed)',
        ],
        applicationProcess:
            'Cannot apply directly. Must be nominated by a French higher education institution.',
        website: 'https://www.campusfrance.org/en/eiffel-scholarship-program-of-excellence',
        image: 'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=400&h=400&fit=crop',
        hasFullFunding: false,
    },
    {
        id: '9',
        name: 'MEXT Scholarship',
        type: 'scholarship',
        description:
            'The Ministry of Education, Culture, Sports, Science and Technology (MEXT) of Japan offers scholarships to international students who wish to study in graduate courses at Japanese universities as Research Students.',
        countries: ['Japan'],
        countryFlags: ['🇯🇵'],
        fundingAmount: 'Full funding',
        programLevel: ['Bachelor\'s', 'Master\'s', 'PhD'],
        duration: '1.5-2 years (can be extended)',
        fieldsOfStudy: [
            'Engineering',
            'Social Sciences',
            'Humanities',
            'Natural Sciences',
            'Medicine',
        ],
        eligibility: {
            ageLimit: 'Under 35 (for research students)',
            other: [
                'Willingness to learn Japanese',
                'Excellent academic record',
                'Must be born on or after specified date',
            ],
        },
        deadline: 'May 2026 (varies by Embassy)',
        urgency: 'low',
        benefits: [
            'Full tuition waiver',
            'Monthly stipend (143,000-145,000 JPY)',
            'Round-trip airfare',
            'Preparatory Japanese language course',
        ],
        applicationProcess:
            'Apply through the Japanese Embassy or Consulate in your country (Embassy Recommendation) or directly through a Japanese university (University Recommendation).',
        website: 'https://www.studyinjapan.go.jp/en/planning/scholarship/',
        image: 'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?w=400&h=400&fit=crop',
        hasFullFunding: true,
    },
    {
        id: '10',
        name: 'Swiss Government Excellence Scholarships',
        type: 'scholarship',
        description:
            'The Swiss Confederation awards Government Excellence Scholarships to promote international exchange and research cooperation between Switzerland and over 180 other countries.',
        countries: ['Switzerland'],
        countryFlags: ['🇨🇭'],
        fundingAmount: '1,920 CHF/month',
        programLevel: ['PhD', 'Postdoctoral', 'Research'],
        duration: '12-36 months',
        fieldsOfStudy: [
            'All academic fields',
        ],
        eligibility: {
            other: [
                'Master\'s degree or equivalent',
                'Not currently residing in Switzerland',
                'Research proposal approved by a Swiss academic host',
            ],
        },
        deadline: 'Nov 2026 (varies by country)',
        urgency: 'medium',
        benefits: [
            'Monthly stipend',
            'Mandatory Swiss health insurance',
            'Flight allowance',
            'Housing allowance',
            '1-year half-fare public transport card',
        ],
        applicationProcess:
            'Submit a research proposal and secure a professor at a Swiss university who is willing to supervise you before applying through the Swiss Embassy.',
        website: 'https://www.sbfi.admin.ch/sbfi/en/home/education/scholarships-and-grants/swiss-government-excellence-scholarships.html',
        image: 'https://images.unsplash.com/photo-1530122037265-a5f1f91d3b99?w=400&h=400&fit=crop',
        hasFullFunding: true,
    },
    {
        id: '11',
        name: 'Gates Cambridge Scholarship',
        type: 'scholarship',
        description:
            'Established by a donation from the Bill and Melinda Gates Foundation, this scholarship offers full-cost awards to outstanding applicants from outside the UK to pursue a postgraduate degree at the University of Cambridge.',
        countries: ['United Kingdom'],
        countryFlags: ['🇬🇧'],
        fundingAmount: 'Full funding',
        programLevel: ['Master\'s', 'PhD'],
        duration: '1-4 years',
        fieldsOfStudy: [
            'All subjects available at Cambridge',
        ],
        eligibility: {
            other: [
                'Outstanding intellectual ability',
                'Reasons for choice of course',
                'A commitment to improving the lives of others',
                'Leadership potential',
            ],
        },
        deadline: 'Dec 2026 / Jan 2027',
        urgency: 'low',
        benefits: [
            'University composition fee',
            'Maintenance allowance (£21,000/year)',
            'Return economy airfare',
            'Inbound visa costs',
            'Family allowance (if applicable)',
        ],
        applicationProcess:
            'Apply via the University of Cambridge\'s Graduate Application Portal. Apply for admission and the scholarship simultaneously.',
        website: 'https://www.gatescambridge.org/',
        image: 'https://images.unsplash.com/photo-1580582932707-520aed937b7b?w=400&h=400&fit=crop',
        hasFullFunding: true,
    },
    {
        id: '12',
        name: 'Rhodes Scholarship',
        type: 'scholarship',
        description:
            'The Rhodes Scholarship is the oldest and perhaps most prestigious international scholarship programme, enabling outstanding young people to study at the University of Oxford.',
        countries: ['United Kingdom'],
        countryFlags: ['🇬🇧'],
        fundingAmount: 'Full funding',
        programLevel: ['Master\'s', 'PhD', 'Second BA'],
        duration: '2-3 years',
        fieldsOfStudy: [
            'All fields available at Oxford',
        ],
        eligibility: {
            ageLimit: '18-24 years old',
            gpa: 3.7,
            other: [
                'Outstanding intellect and academic achievement',
                'Character, leadership, and commitment to service',
                'Energy to use one\'s talents to the full',
            ],
        },
        deadline: 'Aug-Oct 2026 (varies by region)',
        urgency: 'low',
        benefits: [
            'All University and College fees',
            'Annual stipend (£19,092/year)',
            'Two economy class flights',
            'Student visa fee and International Health Surcharge',
        ],
        applicationProcess:
            'Highly competitive multi-stage process involving institutional endorsement, extensive essays, and rigorous interviews.',
        website: 'https://www.rhodeshouse.ox.ac.uk/scholarships/the-rhodes-scholarship/',
        image: 'https://images.unsplash.com/photo-1549487222-d7ba322c36f5?w=400&h=400&fit=crop',
        hasFullFunding: true,
    },
    {
        id: '13',
        name: 'Knight-Hennessy Scholars',
        type: 'scholarship',
        description:
            'A multidisciplinary, multicultural graduate fellowship program at Stanford University, focusing on developing a community of future global leaders to address complex challenges.',
        countries: ['United States'],
        countryFlags: ['🇺🇸'],
        fundingAmount: 'Full funding',
        programLevel: ['Master\'s', 'PhD', 'Professional (MD, JD, MBA)'],
        duration: 'Up to 3 years',
        fieldsOfStudy: [
            'All graduate programs at Stanford',
        ],
        eligibility: {
            other: [
                'Independence of thought',
                'Purposeful leadership',
                'Civic mindset',
                'Must enroll in a full-time Stanford graduate program',
            ],
        },
        deadline: 'Oct 8, 2026',
        urgency: 'low',
        benefits: [
            'Full tuition and associated fees',
            'Living and academic stipend',
            'Travel stipend (annual round-trip)',
            'Access to exclusive leadership development programming (KHD Scholars program)',
        ],
        applicationProcess:
            'Requires two separate applications: one to the Knight-Hennessy Scholars program and one to your specific Stanford graduate degree program.',
        website: 'https://knight-hennessy.stanford.edu/',
        image: 'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=400&h=400&fit=crop',
        hasFullFunding: true,
    }
];
