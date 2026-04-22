-- ========================================
-- UniSearch Scholarship Programs Database Seed
-- Source: Curated Real-World Programs
-- Generated: 2026-04-22T18:57:43.597Z
-- Total: 13 programs
-- ========================================

-- Clear existing data
DELETE FROM programs;

-- Insert programs
INSERT INTO programs (
  id, name, type, description, countries, country_flags,
  funding_amount, program_level, duration, fields_of_study,
  eligibility, deadline, urgency, benefits, application_process,
  website, image_url, has_full_funding
) VALUES (
  '1',
  'Erasmus Mundus Joint Master Degrees',
  'scholarship',
  'Prestigious international study programmes jointly delivered by consortia of higher education institutions. Offers full scholarships covering tuition, travel, and living expenses for students worldwide.',
  ARRAY['Multiple EU Countries'],
  ARRAY['🇪🇺'],
  '€25,000-€29,000/year',
  ARRAY['Master''s'],
  '1-2 years',
  ARRAY['Engineering','Computer Science','Business','Social Sciences','Environmental Studies','Health Sciences'],
  '{"ieltsRequirement":6.5,"other":["Bachelor''s degree or equivalent","Open to all nationalities","Academic excellence required"]}'::jsonb,
  'Jan 15, 2026',
  'high',
  ARRAY['Full tuition coverage','Monthly stipend (€1,400)','Travel allowance','Insurance coverage','Study in 2-3 European countries'],
  'Apply directly through the Erasmus Mundus catalogue. Each programme has its own application portal and requirements.',
  'https://www.eacea.ec.europa.eu/scholarships/erasmus-mundus-catalogue_en',
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=400&h=400&fit=crop',
  true
);

INSERT INTO programs (
  id, name, type, description, countries, country_flags,
  funding_amount, program_level, duration, fields_of_study,
  eligibility, deadline, urgency, benefits, application_process,
  website, image_url, has_full_funding
) VALUES (
  '2',
  'Stipendium Hungaricum Scholarship',
  'scholarship',
  'Hungarian government scholarship programme offering full scholarships for international students to study in Hungary at various academic levels.',
  ARRAY['Hungary'],
  ARRAY['🇭🇺'],
  'Full tuition + monthly stipend',
  ARRAY['Bachelor''s','Master''s','PhD'],
  '1-6 years (depending on level)',
  ARRAY['All fields available','Medicine','Engineering','Arts','Sciences','Humanities'],
  '{"other":["Citizens of participating countries","Good academic standing","Age limits vary by level","No Hungarian citizenship"]}'::jsonb,
  'Feb 16, 2026',
  'high',
  ARRAY['Full tuition waiver','Monthly stipend (€430-€550)','Free accommodation or housing allowance','Health insurance'],
  'Apply through the Tempus Public Foundation online portal. Requires nomination from sending country or direct application.',
  'https://stipendiumhungaricum.hu/',
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=400&h=400&fit=crop',
  true
);

INSERT INTO programs (
  id, name, type, description, countries, country_flags,
  funding_amount, program_level, duration, fields_of_study,
  eligibility, deadline, urgency, benefits, application_process,
  website, image_url, has_full_funding
) VALUES (
  '3',
  'DAAD Scholarships',
  'scholarship',
  'German Academic Exchange Service offers numerous scholarship programs for international students and researchers to study in Germany.',
  ARRAY['Germany'],
  ARRAY['🇩🇪'],
  '€850-€1,200/month',
  ARRAY['Master''s','PhD','Postdoctoral'],
  '1-4 years',
  ARRAY['Engineering','Natural Sciences','Social Sciences','Arts','Development Cooperation'],
  '{"gpa":3,"ieltsRequirement":6,"other":["Bachelor''s degree completed","At least 2 years work experience (some programs)","Strong academic record"]}'::jsonb,
  'Multiple deadlines throughout the year',
  'medium',
  ARRAY['Monthly scholarship payment','Health insurance','Travel allowance','Study and research allowance','German language course support'],
  'Apply through the DAAD portal. Different programs have different requirements and deadlines.',
  'https://www.daad.de/en/',
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=400&h=400&fit=crop',
  false
);

INSERT INTO programs (
  id, name, type, description, countries, country_flags,
  funding_amount, program_level, duration, fields_of_study,
  eligibility, deadline, urgency, benefits, application_process,
  website, image_url, has_full_funding
) VALUES (
  '4',
  'Chevening Scholarships',
  'scholarship',
  'UK government''s global scholarship programme funded by the Foreign, Commonwealth and Development Office. Enables outstanding emerging leaders to pursue one-year master''s degrees in the UK.',
  ARRAY['United Kingdom'],
  ARRAY['🇬🇧'],
  'Full funding',
  ARRAY['Master''s'],
  '1 year',
  ARRAY['All fields','Public Policy','International Relations','Business','Law','STEM'],
  '{"ieltsRequirement":6.5,"other":["Citizen of Chevening-eligible country","At least 2 years work experience","Bachelor''s degree","Leadership potential","Return to home country for 2 years after study"]}'::jsonb,
  'Nov 5, 2026',
  'high',
  ARRAY['Full tuition fees','Monthly living allowance','Return airfare','Arrival and departure allowances','Visa application cost','Access to exclusive networking events'],
  'Apply online through the Chevening website. Requires three course choices, references, and essays.',
  'https://www.chevening.org/',
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=400&h=400&fit=crop',
  true
);

INSERT INTO programs (
  id, name, type, description, countries, country_flags,
  funding_amount, program_level, duration, fields_of_study,
  eligibility, deadline, urgency, benefits, application_process,
  website, image_url, has_full_funding
) VALUES (
  '5',
  'Fulbright Foreign Student Program',
  'scholarship',
  'Flagship international educational exchange program sponsored by the U.S. government, providing scholarships for graduate students, young professionals and artists.',
  ARRAY['United States'],
  ARRAY['🇺🇸'],
  'Full funding',
  ARRAY['Master''s','PhD'],
  '1-2 years (Master''s), 3-5 years (PhD)',
  ARRAY['All fields','Sciences','Arts','Humanities','Social Sciences','Professional Studies'],
  '{"gpa":3,"ieltsRequirement":7,"other":["Citizen of participating country","Bachelor''s degree or equivalent","No U.S. citizenship or permanent residency","Demonstrated leadership potential"]}'::jsonb,
  'Varies by country (typically Oct-Dec 2026)',
  'medium',
  ARRAY['Full tuition','Living stipend','Round-trip airfare','Health insurance','Accident coverage','Support for books and research'],
  'Apply through Fulbright Commission or U.S. Embassy in your home country. Requires academic records, references, and statement of purpose.',
  'https://foreign.fulbrightonline.org/',
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=400&fit=crop',
  true
);

INSERT INTO programs (
  id, name, type, description, countries, country_flags,
  funding_amount, program_level, duration, fields_of_study,
  eligibility, deadline, urgency, benefits, application_process,
  website, image_url, has_full_funding
) VALUES (
  '6',
  'Swedish Institute Scholarships',
  'scholarship',
  'Scholarships for global professionals to pursue master''s studies in Sweden, promoting leadership development and sustainable development.',
  ARRAY['Sweden'],
  ARRAY['🇸🇪'],
  'Full funding',
  ARRAY['Master''s'],
  '1-2 years',
  ARRAY['Sustainability','Innovation','Human Rights','Technology','Business','Social Sciences'],
  '{"ieltsRequirement":6.5,"other":["Citizens of eligible countries","At least 3,000 hours work experience","Bachelor''s degree","Demonstrated leadership experience"]}'::jsonb,
  'Feb 20, 2026',
  'high',
  ARRAY['Full tuition coverage','Living expenses (SEK 12,000/month)','Travel grant','Insurance','Network events and activities'],
  'Apply through University Admissions in Sweden, then submit SI scholarship application.',
  'https://si.se/en/apply/scholarships/',
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=400&h=400&fit=crop',
  true
);

INSERT INTO programs (
  id, name, type, description, countries, country_flags,
  funding_amount, program_level, duration, fields_of_study,
  eligibility, deadline, urgency, benefits, application_process,
  website, image_url, has_full_funding
) VALUES (
  '7',
  'Australia Awards Scholarships',
  'scholarship',
  'Long-term development awards administered by the Australian Government offering opportunities for people from developing countries to undertake full-time undergraduate or postgraduate study.',
  ARRAY['Australia'],
  ARRAY['🇦🇺'],
  'Full funding',
  ARRAY['Bachelor''s','Master''s','PhD'],
  '2-4 years',
  ARRAY['All fields aligned with development priorities','Agriculture','Education','Health','Infrastructure','Governance'],
  '{"ieltsRequirement":6.5,"other":["Citizen of eligible country","Not hold Australian citizenship or permanent residency","Meet minimum academic requirements","Commitment to return home for 2 years"]}'::jsonb,
  'Apr 30, 2026',
  'medium',
  ARRAY['Full tuition fees','Return air travel','Establishment allowance','Living allowance (fortnightly)','Health insurance','Pre-course English training if required'],
  'Apply through the Australia Awards online application system. Country-specific requirements apply.',
  'https://www.australiaawards.gov.au/',
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=400&h=400&fit=crop',
  true
);

INSERT INTO programs (
  id, name, type, description, countries, country_flags,
  funding_amount, program_level, duration, fields_of_study,
  eligibility, deadline, urgency, benefits, application_process,
  website, image_url, has_full_funding
) VALUES (
  '8',
  'Eiffel Excellence Scholarship',
  'scholarship',
  'French Ministry for Europe and Foreign Affairs scholarship program to attract top international students to French higher education institutions.',
  ARRAY['France'],
  ARRAY['🇫🇷'],
  '€1,400/month (Master''s), €1,700/month (PhD)',
  ARRAY['Master''s','PhD'],
  '1-3 years',
  ARRAY['Engineering','Economics and Management','Law and Political Science','Exact Sciences'],
  '{"ageLimit":"Under 30 (Master''s), Under 35 (PhD)","other":["Non-French nationals","Nominated by French higher education institution","Excellent academic record"]}'::jsonb,
  'Jan 10, 2026',
  'high',
  ARRAY['Monthly allowance','Return travel ticket','Health insurance','Cultural activities','Accommodation support (not guaranteed)'],
  'Cannot apply directly. Must be nominated by a French higher education institution.',
  'https://www.campusfrance.org/en/eiffel-scholarship-program-of-excellence',
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=400&h=400&fit=crop',
  false
);

INSERT INTO programs (
  id, name, type, description, countries, country_flags,
  funding_amount, program_level, duration, fields_of_study,
  eligibility, deadline, urgency, benefits, application_process,
  website, image_url, has_full_funding
) VALUES (
  '9',
  'MEXT Scholarship',
  'scholarship',
  'The Ministry of Education, Culture, Sports, Science and Technology (MEXT) of Japan offers scholarships to international students who wish to study in graduate courses at Japanese universities as Research Students.',
  ARRAY['Japan'],
  ARRAY['🇯🇵'],
  'Full funding',
  ARRAY['Bachelor''s','Master''s','PhD'],
  '1.5-2 years (can be extended)',
  ARRAY['Engineering','Social Sciences','Humanities','Natural Sciences','Medicine'],
  '{"ageLimit":"Under 35 (for research students)","other":["Willingness to learn Japanese","Excellent academic record","Must be born on or after specified date"]}'::jsonb,
  'May 2026 (varies by Embassy)',
  'low',
  ARRAY['Full tuition waiver','Monthly stipend (143,000-145,000 JPY)','Round-trip airfare','Preparatory Japanese language course'],
  'Apply through the Japanese Embassy or Consulate in your country (Embassy Recommendation) or directly through a Japanese university (University Recommendation).',
  'https://www.studyinjapan.go.jp/en/planning/scholarship/',
  'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?w=400&h=400&fit=crop',
  true
);

INSERT INTO programs (
  id, name, type, description, countries, country_flags,
  funding_amount, program_level, duration, fields_of_study,
  eligibility, deadline, urgency, benefits, application_process,
  website, image_url, has_full_funding
) VALUES (
  '10',
  'Swiss Government Excellence Scholarships',
  'scholarship',
  'The Swiss Confederation awards Government Excellence Scholarships to promote international exchange and research cooperation between Switzerland and over 180 other countries.',
  ARRAY['Switzerland'],
  ARRAY['🇨🇭'],
  '1,920 CHF/month',
  ARRAY['PhD','Postdoctoral','Research'],
  '12-36 months',
  ARRAY['All academic fields'],
  '{"other":["Master''s degree or equivalent","Not currently residing in Switzerland","Research proposal approved by a Swiss academic host"]}'::jsonb,
  'Nov 2026 (varies by country)',
  'medium',
  ARRAY['Monthly stipend','Mandatory Swiss health insurance','Flight allowance','Housing allowance','1-year half-fare public transport card'],
  'Submit a research proposal and secure a professor at a Swiss university who is willing to supervise you before applying through the Swiss Embassy.',
  'https://www.sbfi.admin.ch/sbfi/en/home/education/scholarships-and-grants/swiss-government-excellence-scholarships.html',
  'https://images.unsplash.com/photo-1530122037265-a5f1f91d3b99?w=400&h=400&fit=crop',
  true
);

INSERT INTO programs (
  id, name, type, description, countries, country_flags,
  funding_amount, program_level, duration, fields_of_study,
  eligibility, deadline, urgency, benefits, application_process,
  website, image_url, has_full_funding
) VALUES (
  '11',
  'Gates Cambridge Scholarship',
  'scholarship',
  'Established by a donation from the Bill and Melinda Gates Foundation, this scholarship offers full-cost awards to outstanding applicants from outside the UK to pursue a postgraduate degree at the University of Cambridge.',
  ARRAY['United Kingdom'],
  ARRAY['🇬🇧'],
  'Full funding',
  ARRAY['Master''s','PhD'],
  '1-4 years',
  ARRAY['All subjects available at Cambridge'],
  '{"other":["Outstanding intellectual ability","Reasons for choice of course","A commitment to improving the lives of others","Leadership potential"]}'::jsonb,
  'Dec 2026 / Jan 2027',
  'low',
  ARRAY['University composition fee','Maintenance allowance (£21,000/year)','Return economy airfare','Inbound visa costs','Family allowance (if applicable)'],
  'Apply via the University of Cambridge''s Graduate Application Portal. Apply for admission and the scholarship simultaneously.',
  'https://www.gatescambridge.org/',
  'https://images.unsplash.com/photo-1580582932707-520aed937b7b?w=400&h=400&fit=crop',
  true
);

INSERT INTO programs (
  id, name, type, description, countries, country_flags,
  funding_amount, program_level, duration, fields_of_study,
  eligibility, deadline, urgency, benefits, application_process,
  website, image_url, has_full_funding
) VALUES (
  '12',
  'Rhodes Scholarship',
  'scholarship',
  'The Rhodes Scholarship is the oldest and perhaps most prestigious international scholarship programme, enabling outstanding young people to study at the University of Oxford.',
  ARRAY['United Kingdom'],
  ARRAY['🇬🇧'],
  'Full funding',
  ARRAY['Master''s','PhD','Second BA'],
  '2-3 years',
  ARRAY['All fields available at Oxford'],
  '{"ageLimit":"18-24 years old","gpa":3.7,"other":["Outstanding intellect and academic achievement","Character, leadership, and commitment to service","Energy to use one''s talents to the full"]}'::jsonb,
  'Aug-Oct 2026 (varies by region)',
  'low',
  ARRAY['All University and College fees','Annual stipend (£19,092/year)','Two economy class flights','Student visa fee and International Health Surcharge'],
  'Highly competitive multi-stage process involving institutional endorsement, extensive essays, and rigorous interviews.',
  'https://www.rhodeshouse.ox.ac.uk/scholarships/the-rhodes-scholarship/',
  'https://images.unsplash.com/photo-1549487222-d7ba322c36f5?w=400&h=400&fit=crop',
  true
);

INSERT INTO programs (
  id, name, type, description, countries, country_flags,
  funding_amount, program_level, duration, fields_of_study,
  eligibility, deadline, urgency, benefits, application_process,
  website, image_url, has_full_funding
) VALUES (
  '13',
  'Knight-Hennessy Scholars',
  'scholarship',
  'A multidisciplinary, multicultural graduate fellowship program at Stanford University, focusing on developing a community of future global leaders to address complex challenges.',
  ARRAY['United States'],
  ARRAY['🇺🇸'],
  'Full funding',
  ARRAY['Master''s','PhD','Professional (MD, JD, MBA)'],
  'Up to 3 years',
  ARRAY['All graduate programs at Stanford'],
  '{"other":["Independence of thought","Purposeful leadership","Civic mindset","Must enroll in a full-time Stanford graduate program"]}'::jsonb,
  'Oct 8, 2026',
  'low',
  ARRAY['Full tuition and associated fees','Living and academic stipend','Travel stipend (annual round-trip)','Access to exclusive leadership development programming (KHD Scholars program)'],
  'Requires two separate applications: one to the Knight-Hennessy Scholars program and one to your specific Stanford graduate degree program.',
  'https://knight-hennessy.stanford.edu/',
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=400&h=400&fit=crop',
  true
);
