-- ============================================================
-- UniSearch Database Schema & Seed Data
-- Run this in your Supabase SQL Editor
-- ============================================================

-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- ============================================================
-- 1. Universities Table
-- ============================================================
CREATE TABLE IF NOT EXISTS universities (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL,
  country TEXT NOT NULL,
  country_flag TEXT NOT NULL DEFAULT '',
  location TEXT NOT NULL,
  description TEXT NOT NULL DEFAULT '',
  tuition_range TEXT NOT NULL DEFAULT '',
  ielts_requirement NUMERIC(3,1) NOT NULL DEFAULT 0,
  deadline TEXT NOT NULL DEFAULT '',
  has_scholarship BOOLEAN NOT NULL DEFAULT false,
  image_url TEXT NOT NULL DEFAULT '',
  urgency TEXT CHECK (urgency IN ('high', 'medium', 'low')),
  ranking INTEGER,
  acceptance_rate NUMERIC(5,2),
  student_population INTEGER,
  international_students_pct NUMERIC(5,2),
  programs_offered INTEGER,
  website TEXT,
  tuition_min INTEGER,
  tuition_max INTEGER,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ============================================================
-- 2. Programs Table
-- ============================================================
CREATE TABLE IF NOT EXISTS programs (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL,
  type TEXT NOT NULL CHECK (type IN ('scholarship', 'exchange', 'fellowship')),
  description TEXT NOT NULL DEFAULT '',
  countries TEXT[] NOT NULL DEFAULT '{}',
  country_flags TEXT[] NOT NULL DEFAULT '{}',
  funding_amount TEXT NOT NULL DEFAULT '',
  program_level TEXT[] NOT NULL DEFAULT '{}',
  duration TEXT NOT NULL DEFAULT '',
  fields_of_study TEXT[] NOT NULL DEFAULT '{}',
  eligibility JSONB NOT NULL DEFAULT '{}',
  deadline TEXT NOT NULL DEFAULT '',
  urgency TEXT CHECK (urgency IN ('high', 'medium', 'low')),
  benefits TEXT[] NOT NULL DEFAULT '{}',
  application_process TEXT NOT NULL DEFAULT '',
  website TEXT NOT NULL DEFAULT '',
  image_url TEXT NOT NULL DEFAULT '',
  has_full_funding BOOLEAN NOT NULL DEFAULT false,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ============================================================
-- 3. User Profiles Table (extends Supabase auth.users)
-- ============================================================
CREATE TABLE IF NOT EXISTS user_profiles (
  id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  full_name TEXT NOT NULL DEFAULT '',
  email TEXT NOT NULL DEFAULT '',
  gpa NUMERIC(3,1),
  ielts_score NUMERIC(3,1),
  budget_min INTEGER,
  budget_max INTEGER,
  preferred_countries TEXT[] NOT NULL DEFAULT '{}',
  academic_background TEXT,
  avatar_url TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ============================================================
-- 4. Saved Universities Table
-- ============================================================
CREATE TABLE IF NOT EXISTS saved_universities (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  university_id UUID NOT NULL REFERENCES universities(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE(user_id, university_id)
);

-- ============================================================
-- Row Level Security (RLS)
-- ============================================================

-- Universities: anyone can read
ALTER TABLE universities ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Universities are viewable by everyone" ON universities
  FOR SELECT USING (true);

-- Programs: anyone can read
ALTER TABLE programs ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Programs are viewable by everyone" ON programs
  FOR SELECT USING (true);

-- User profiles: users can CRUD their own
ALTER TABLE user_profiles ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Users can view own profile" ON user_profiles
  FOR SELECT USING (auth.uid() = id);
CREATE POLICY "Users can insert own profile" ON user_profiles
  FOR INSERT WITH CHECK (auth.uid() = id);
CREATE POLICY "Users can update own profile" ON user_profiles
  FOR UPDATE USING (auth.uid() = id);

-- Saved universities: users can CRUD their own
ALTER TABLE saved_universities ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Users can view own saved" ON saved_universities
  FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can insert own saved" ON saved_universities
  FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users can delete own saved" ON saved_universities
  FOR DELETE USING (auth.uid() = user_id);

-- ============================================================
-- Indexes
-- ============================================================
CREATE INDEX IF NOT EXISTS idx_universities_country ON universities(country);
CREATE INDEX IF NOT EXISTS idx_universities_ielts ON universities(ielts_requirement);
CREATE INDEX IF NOT EXISTS idx_universities_scholarship ON universities(has_scholarship);
CREATE INDEX IF NOT EXISTS idx_saved_universities_user ON saved_universities(user_id);
CREATE INDEX IF NOT EXISTS idx_saved_universities_uni ON saved_universities(university_id);

-- ============================================================
-- SEED DATA: Universities
-- ============================================================
INSERT INTO universities (name, country, country_flag, location, description, tuition_range, ielts_requirement, deadline, has_scholarship, image_url, urgency, ranking, acceptance_rate, student_population, international_students_pct, programs_offered, website, tuition_min, tuition_max)
VALUES
  ('Massachusetts Institute of Technology', 'United States', '🇺🇸', 'Cambridge, MA',
   'Leading institution in technology and innovation, renowned for cutting-edge research and exceptional STEM programs.',
   '$55,000-$60,000', 7.0, 'Jan 15, 2025', true,
   'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=400&h=400&fit=crop',
   'high', 1, 3.96, 11574, 33.0, 145, 'https://www.mit.edu', 55000, 60000),

  ('University of Oxford', 'United Kingdom', '🇬🇧', 'Oxford',
   'One of the oldest and most prestigious universities in the world, offering world-class education across all disciplines.',
   '$30,000-$40,000', 7.5, 'Oct 15, 2024', true,
   'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=400&h=400&fit=crop',
   'high', 3, 17.5, 26015, 43.0, 350, 'https://www.ox.ac.uk', 30000, 40000),

  ('University of Toronto', 'Canada', '🇨🇦', 'Toronto, ON',
   'Canada''s top-ranked university with diverse programs and a vibrant multicultural campus environment.',
   '$25,000-$35,000', 6.5, 'Mar 1, 2025', true,
   'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=400&h=400&fit=crop',
   'medium', 18, 43.0, 97039, 27.0, 700, 'https://www.utoronto.ca', 25000, 35000),

  ('University of Melbourne', 'Australia', '🇦🇺', 'Melbourne, VIC',
   'Leading Australian university known for research excellence and strong industry connections.',
   '$30,000-$45,000', 6.5, 'May 31, 2025', true,
   'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=400&fit=crop',
   'low', 14, 70.0, 52600, 42.0, 400, 'https://www.unimelb.edu.au', 30000, 45000),

  ('Technical University of Munich', 'Germany', '🇩🇪', 'Munich',
   'Top technical university in Germany with excellent engineering and science programs, many taught in English.',
   '$2,000-$5,000', 6.0, 'Jul 15, 2025', false,
   'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=400&h=400&fit=crop',
   'low', 30, 8.0, 50484, 37.0, 180, 'https://www.tum.de', 2000, 5000),

  ('National University of Singapore', 'Singapore', '🇸🇬', 'Singapore',
   'Asia''s leading university with strong focus on innovation and entrepreneurship in a global city.',
   '$20,000-$30,000', 6.5, 'Feb 28, 2025', true,
   'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=400&fit=crop',
   'medium', 8, 20.0, 43000, 34.0, 300, 'https://www.nus.edu.sg', 20000, 30000),

  ('Sorbonne University', 'France', '🇫🇷', 'Paris',
   'Historic French university with excellence in humanities, sciences, and medicine in the heart of Paris.',
   '$3,000-$8,000', 6.0, 'Apr 30, 2025', true,
   'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=400&h=400&fit=crop',
   'medium', 43, 15.0, 55600, 20.0, 320, 'https://www.sorbonne-universite.fr', 3000, 8000),

  ('University of Amsterdam', 'Netherlands', '🇳🇱', 'Amsterdam',
   'International research university with a broad range of English-taught programs in a vibrant European city.',
   '$10,000-$20,000', 6.5, 'May 1, 2025', true,
   'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=400&h=400&fit=crop',
   'medium', 55, 35.0, 39000, 22.0, 200, 'https://www.uva.nl', 10000, 20000),

  ('ETH Zurich', 'Switzerland', '🇨🇭', 'Zurich',
   'World-renowned for science and technology, consistently ranked among the top universities globally.',
   '$1,500-$2,000', 7.0, 'Dec 15, 2024', false,
   'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=400&h=400&fit=crop',
   'high', 7, 27.0, 24500, 40.0, 160, 'https://ethz.ch', 1500, 2000),

  ('University of British Columbia', 'Canada', '🇨🇦', 'Vancouver, BC',
   'Beautiful campus with outstanding research facilities and diverse academic programs in a stunning location.',
   '$25,000-$35,000', 6.5, 'Jan 15, 2025', true,
   'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=400&h=400&fit=crop',
   'high', 35, 52.4, 68547, 31.0, 500, 'https://www.ubc.ca', 25000, 35000),

  ('University College London', 'United Kingdom', '🇬🇧', 'London',
   'London''s leading multidisciplinary university with a global reputation for teaching and research excellence.',
   '$25,000-$40,000', 6.5, 'Jan 31, 2025', true,
   'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=400&h=400&fit=crop',
   'high', 9, 63.0, 46000, 55.0, 440, 'https://www.ucl.ac.uk', 25000, 40000),

  ('Australian National University', 'Australia', '🇦🇺', 'Canberra, ACT',
   'Australia''s national university located in the capital, known for research and policy influence.',
   '$35,000-$45,000', 6.5, 'Dec 31, 2024', true,
   'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=400&h=400&fit=crop',
   'high', 27, 35.0, 25500, 38.0, 250, 'https://www.anu.edu.au', 35000, 45000),

  ('McGill University', 'Canada', '🇨🇦', 'Montreal, QC',
   'Canada''s most international university with a rich history and strong academic reputation.',
   '$20,000-$30,000', 6.5, 'Jan 15, 2025', true,
   'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=400&fit=crop',
   'high', 31, 46.3, 40036, 30.0, 400, 'https://www.mcgill.ca', 20000, 30000),

  ('University of Sydney', 'Australia', '🇦🇺', 'Sydney, NSW',
   'Australia''s first university with a beautiful campus and comprehensive range of study options.',
   '$30,000-$45,000', 6.5, 'Jan 31, 2025', false,
   'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=400&h=400&fit=crop',
   'high', 19, 30.0, 70000, 35.0, 450, 'https://www.sydney.edu.au', 30000, 45000),

  ('Ludwig Maximilian University of Munich', 'Germany', '🇩🇪', 'Munich',
   'One of Germany''s oldest universities with strong programs in humanities and natural sciences.',
   '$0-$3,000', 6.0, 'Jul 15, 2025', true,
   'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=400&h=400&fit=crop',
   'low', 32, 12.0, 52425, 18.0, 300, 'https://www.lmu.de', 0, 3000);

-- ============================================================
-- SEED DATA: Programs
-- ============================================================
INSERT INTO programs (name, type, description, countries, country_flags, funding_amount, program_level, duration, fields_of_study, eligibility, deadline, urgency, benefits, application_process, website, image_url, has_full_funding)
VALUES
  ('Erasmus Mundus Joint Master Degrees', 'scholarship',
   'Prestigious international study programmes jointly delivered by consortia of higher education institutions. Offers full scholarships covering tuition, travel, and living expenses for students worldwide.',
   ARRAY['Multiple EU Countries'], ARRAY['🇪🇺'],
   '€25,000-€29,000/year', ARRAY['Master''s'], '1-2 years',
   ARRAY['Engineering', 'Computer Science', 'Business', 'Social Sciences', 'Environmental Studies', 'Health Sciences'],
   '{"ieltsRequirement": 6.5, "other": ["Bachelor''s degree or equivalent", "Open to all nationalities", "Academic excellence required"]}',
   'Jan 15, 2025', 'high',
   ARRAY['Full tuition coverage', 'Monthly stipend (€1,400)', 'Travel allowance', 'Insurance coverage', 'Study in 2-3 European countries'],
   'Apply directly through the Erasmus Mundus catalogue. Each programme has its own application portal and requirements.',
   'https://www.eacea.ec.europa.eu/scholarships/erasmus-mundus-catalogue_en',
   'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=400&h=400&fit=crop',
   true),

  ('Stipendium Hungaricum Scholarship', 'scholarship',
   'Hungarian government scholarship programme offering full scholarships for international students to study in Hungary at various academic levels.',
   ARRAY['Hungary'], ARRAY['🇭🇺'],
   'Full tuition + monthly stipend', ARRAY['Bachelor''s', 'Master''s', 'PhD'], '1-6 years (depending on level)',
   ARRAY['All fields available', 'Medicine', 'Engineering', 'Arts', 'Sciences', 'Humanities'],
   '{"other": ["Citizens of participating countries", "Good academic standing", "Age limits vary by level", "No Hungarian citizenship"]}',
   'Feb 16, 2025', 'high',
   ARRAY['Full tuition waiver', 'Monthly stipend (€430-€550)', 'Free accommodation or housing allowance', 'Health insurance'],
   'Apply through the Tempus Public Foundation online portal. Requires nomination from sending country or direct application.',
   'https://stipendiumhungaricum.hu/',
   'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=400&h=400&fit=crop',
   true),

  ('DAAD Scholarships', 'scholarship',
   'German Academic Exchange Service offers numerous scholarship programs for international students and researchers to study in Germany.',
   ARRAY['Germany'], ARRAY['🇩🇪'],
   '€850-€1,200/month', ARRAY['Master''s', 'PhD', 'Postdoctoral'], '1-4 years',
   ARRAY['Engineering', 'Natural Sciences', 'Social Sciences', 'Arts', 'Development Cooperation'],
   '{"gpa": 3.0, "ieltsRequirement": 6.0, "other": ["Bachelor''s degree completed", "At least 2 years work experience (some programs)", "Strong academic record"]}',
   'Multiple deadlines throughout the year', 'medium',
   ARRAY['Monthly scholarship payment', 'Health insurance', 'Travel allowance', 'Study and research allowance', 'German language course support'],
   'Apply through the DAAD portal. Different programs have different requirements and deadlines.',
   'https://www.daad.de/en/',
   'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=400&h=400&fit=crop',
   false),

  ('Chevening Scholarships', 'scholarship',
   'UK government''s global scholarship programme funded by the Foreign, Commonwealth and Development Office. Enables outstanding emerging leaders to pursue one-year master''s degrees in the UK.',
   ARRAY['United Kingdom'], ARRAY['🇬🇧'],
   'Full funding', ARRAY['Master''s'], '1 year',
   ARRAY['All fields', 'Public Policy', 'International Relations', 'Business', 'Law', 'STEM'],
   '{"ieltsRequirement": 6.5, "other": ["Citizen of Chevening-eligible country", "At least 2 years work experience", "Bachelor''s degree", "Leadership potential", "Return to home country for 2 years after study"]}',
   'Nov 5, 2024', 'high',
   ARRAY['Full tuition fees', 'Monthly living allowance', 'Return airfare', 'Arrival and departure allowances', 'Visa application cost', 'Access to exclusive networking events'],
   'Apply online through the Chevening website. Requires three course choices, references, and essays.',
   'https://www.chevening.org/',
   'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=400&h=400&fit=crop',
   true),

  ('Fulbright Foreign Student Program', 'scholarship',
   'Flagship international educational exchange program sponsored by the U.S. government, providing scholarships for graduate students, young professionals and artists.',
   ARRAY['United States'], ARRAY['🇺🇸'],
   'Full funding', ARRAY['Master''s', 'PhD'], '1-2 years (Master''s), 3-5 years (PhD)',
   ARRAY['All fields', 'Sciences', 'Arts', 'Humanities', 'Social Sciences', 'Professional Studies'],
   '{"gpa": 3.0, "ieltsRequirement": 7.0, "other": ["Citizen of participating country", "Bachelor''s degree or equivalent", "No U.S. citizenship or permanent residency", "Demonstrated leadership potential"]}',
   'Varies by country (typically Oct-Dec)', 'medium',
   ARRAY['Full tuition', 'Living stipend', 'Round-trip airfare', 'Health insurance', 'Accident coverage', 'Support for books and research'],
   'Apply through Fulbright Commission or U.S. Embassy in your home country. Requires academic records, references, and statement of purpose.',
   'https://foreign.fulbrightonline.org/',
   'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=400&fit=crop',
   true),

  ('Swedish Institute Scholarships', 'scholarship',
   'Scholarships for global professionals to pursue master''s studies in Sweden, promoting leadership development and sustainable development.',
   ARRAY['Sweden'], ARRAY['🇸🇪'],
   'Full funding', ARRAY['Master''s'], '1-2 years',
   ARRAY['Sustainability', 'Innovation', 'Human Rights', 'Technology', 'Business', 'Social Sciences'],
   '{"ieltsRequirement": 6.5, "other": ["Citizens of eligible countries", "At least 3,000 hours work experience", "Bachelor''s degree", "Demonstrated leadership experience"]}',
   'Feb 20, 2025', 'high',
   ARRAY['Full tuition coverage', 'Living expenses (SEK 10,000/month)', 'Travel grant', 'Insurance', 'Network events and activities'],
   'Apply through University Admissions in Sweden, then submit SI scholarship application.',
   'https://si.se/en/apply/scholarships/',
   'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=400&h=400&fit=crop',
   true),

  ('Australia Awards Scholarships', 'scholarship',
   'Long-term development awards administered by the Australian Government offering opportunities for people from developing countries to undertake full-time undergraduate or postgraduate study.',
   ARRAY['Australia'], ARRAY['🇦🇺'],
   'Full funding', ARRAY['Bachelor''s', 'Master''s', 'PhD'], '2-4 years',
   ARRAY['All fields aligned with development priorities', 'Agriculture', 'Education', 'Health', 'Infrastructure', 'Governance'],
   '{"ieltsRequirement": 6.5, "other": ["Citizen of eligible country", "Not hold Australian citizenship or permanent residency", "Meet minimum academic requirements", "Commitment to return home for 2 years"]}',
   'Apr 30, 2025', 'medium',
   ARRAY['Full tuition fees', 'Return air travel', 'Establishment allowance', 'Living allowance (fortnightly)', 'Health insurance', 'Pre-course English training if required'],
   'Apply through the Australia Awards online application system. Country-specific requirements apply.',
   'https://www.australiaawards.gov.au/',
   'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=400&h=400&fit=crop',
   true),

  ('Eiffel Excellence Scholarship', 'scholarship',
   'French Ministry for Europe and Foreign Affairs scholarship program to attract top international students to French higher education institutions.',
   ARRAY['France'], ARRAY['🇫🇷'],
   '€1,400/month (Master''s), €1,700/month (PhD)', ARRAY['Master''s', 'PhD'], '1-3 years',
   ARRAY['Engineering', 'Economics and Management', 'Law and Political Science', 'Exact Sciences'],
   '{"ageLimit": "Under 30 (Master''s), Under 35 (PhD)", "other": ["Non-French nationals", "Nominated by French higher education institution", "Excellent academic record"]}',
   'Jan 10, 2025', 'high',
   ARRAY['Monthly allowance', 'Return travel ticket', 'Health insurance', 'Cultural activities', 'Accommodation support (not guaranteed)'],
   'Cannot apply directly. Must be nominated by a French higher education institution.',
   'https://www.campusfrance.org/en/eiffel-scholarship-program-of-excellence',
   'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=400&h=400&fit=crop',
   false);
