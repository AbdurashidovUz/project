-- ========================================
-- UniSearch University Database Seed
-- Source: Hipolabs Universities API (http://universities.hipolabs.com)
-- Generated: 2026-04-28T17:04:47.951Z
-- Total: 146 universities
-- ========================================

-- Clear existing data
DELETE FROM saved_universities;
DELETE FROM universities;

-- Insert universities
INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Yale University',
  'United States',
  '🇺🇸',
  'New Haven, CT',
  'Yale University stands out for its rigorous academic standards and internationally recognized degrees. Located in New Haven, CT, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Data Science, Engineering, Medicine.',
  '$30K - $56K/year',
  30429,
  55783,
  7.5,
  'Jan 1, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  16,
  36,
  54883,
  34.4,
  334,
  'http://www.yale.edu',
  'http://www.yale.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Duke University',
  'United States',
  '🇺🇸',
  'Durham, NC',
  'Located in Durham, NC, Duke University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United States. Popular programs include Computer Science.',
  '$31K - $39K/year',
  31124,
  38559,
  7,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'high',
  57,
  7,
  49071,
  18.1,
  180,
  'http://www.duke.edu',
  'http://www.duke.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Cornell University',
  'United States',
  '🇺🇸',
  'Ithaca, NY',
  'Cornell University is one of United States''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Business Administration, Biology, Data Science.',
  '$31K - $47K/year',
  31489,
  47026,
  6.5,
  'Mar 1, 2026',
  false,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'high',
  13,
  43,
  41960,
  16,
  144,
  'http://www.cornell.edu',
  'http://www.cornell.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Harvard University',
  'United States',
  '🇺🇸',
  'Cambridge, MA',
  'Located in Cambridge, MA, Harvard University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United States. Popular programs include Physics, Law, Business Administration, Artificial Intelligence.',
  '$41K - $65K/year',
  40702,
  64710,
  7,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'medium',
  4,
  45,
  45434,
  19.5,
  340,
  'http://www.harvard.edu',
  'http://www.harvard.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Columbia University',
  'United States',
  '🇺🇸',
  'New York, NY',
  'With a long tradition of academic excellence, Columbia University in New York, NY offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Artificial Intelligence, Economics, Medicine, Business Administration.',
  '$28K - $41K/year',
  28494,
  41250,
  6.5,
  'Feb 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  23,
  27,
  38500,
  19.9,
  154,
  'http://www.columbia.edu',
  'http://www.columbia.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'New York University',
  'United States',
  '🇺🇸',
  'New York, NY',
  'Located in New York, NY, New York University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United States. Popular programs include Computer Science, Architecture, Artificial Intelligence, Physics.',
  '$48K - $55K/year',
  47522,
  54968,
  7.5,
  'Feb 15, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  38,
  52,
  23402,
  30.7,
  239,
  'http://www.nyu.edu',
  'http://www.nyu.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Stanford University',
  'United States',
  '🇺🇸',
  'Stanford, CA',
  'Located in Stanford, CA, Stanford University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United States. Popular programs include Computer Science, Medicine, Psychology, Biology.',
  '$34K - $59K/year',
  33930,
  58947,
  7,
  'Feb 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  5,
  14,
  13057,
  31.8,
  251,
  'http://www.stanford.edu',
  'http://www.stanford.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Princeton University',
  'United States',
  '🇺🇸',
  'Princeton, NJ',
  'Princeton University is one of United States''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Business Administration, Data Science, Engineering, Medicine.',
  '$35K - $50K/year',
  35460,
  50324,
  7,
  'Jan 1, 2026',
  true,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'medium',
  17,
  26,
  20190,
  27,
  259,
  'http://www.princeton.edu',
  'http://www.princeton.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Chicago',
  'United States',
  '🇺🇸',
  'Chicago, IL',
  'Located in Chicago, IL, University of Chicago combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United States. Popular programs include Computer Science, Psychology, Physics, Finance.',
  '$49K - $59K/year',
  48930,
  58617,
  7.5,
  'Feb 15, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  11,
  31,
  7341,
  33.6,
  330,
  'http://www.uchicago.edu',
  'http://www.uchicago.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Northwestern University',
  'United States',
  '🇺🇸',
  'Evanston, IL',
  'Northwestern University is a leading research university in Evanston, IL, United States, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science.',
  '$49K - $61K/year',
  48915,
  60770,
  7,
  'Mar 1, 2026',
  false,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  47,
  30,
  7626,
  33.1,
  102,
  'http://www.northwestern.edu',
  'http://www.northwestern.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Johns Hopkins University',
  'United States',
  '🇺🇸',
  'Baltimore, MD',
  'With a long tradition of academic excellence, Johns Hopkins University in Baltimore, MD offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science.',
  '$27K - $45K/year',
  26587,
  44928,
  7.5,
  'Jan 1, 2026',
  false,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  28,
  39,
  22543,
  26.3,
  251,
  'http://www.jhu.edu',
  'http://www.jhu.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Washington',
  'United States',
  '🇺🇸',
  'Seattle, WA',
  'With a long tradition of academic excellence, University of Washington in Seattle, WA offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Business Administration, Biology, Data Science.',
  '$37K - $45K/year',
  37000,
  45482,
  6.5,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'high',
  63,
  17,
  45531,
  21.1,
  225,
  'http://www.washington.edu',
  'http://www.washington.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Carnegie Mellon University',
  'United States',
  '🇺🇸',
  'Pittsburgh, PA',
  'Carnegie Mellon University stands out for its rigorous academic standards and internationally recognized degrees. Located in Pittsburgh, PA, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Economics, Medicine, Business Administration.',
  '$40K - $64K/year',
  39576,
  63895,
  7,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  52,
  7,
  14749,
  16.3,
  296,
  'http://www.cmu.edu',
  'http://www.cmu.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Pennsylvania',
  'United States',
  '🇺🇸',
  'Philadelphia, PA',
  'With a long tradition of academic excellence, University of Pennsylvania in Philadelphia, PA offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Data Science, Engineering, Medicine.',
  '$47K - $53K/year',
  46689,
  52659,
  7.5,
  'Jan 1, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'medium',
  12,
  31,
  26324,
  16.9,
  85,
  'http://www.upenn.edu',
  'http://www.upenn.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'California Institute of Technology',
  'United States',
  '🇺🇸',
  'Pasadena, CA',
  'California Institute of Technology is a leading research university in Pasadena, CA, United States, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Engineering, Data Science, Artificial Intelligence, Physics.',
  '$45K - $50K/year',
  45213,
  49587,
  6.5,
  'Jan 1, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  15,
  22,
  20205,
  29.5,
  371,
  'http://www.caltech.edu',
  'http://www.caltech.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of California, Berkeley',
  'United States',
  '🇺🇸',
  'Berkeley, CA',
  'Located in Berkeley, CA, University of California, Berkeley combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United States. Popular programs include Computer Science, Architecture, Artificial Intelligence, Physics.',
  '$31K - $35K/year',
  30832,
  35311,
  6.5,
  'Feb 15, 2026',
  true,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'high',
  10,
  35,
  21274,
  34.5,
  238,
  'http://www.berkeley.edu',
  'http://www.berkeley.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Massachusetts Institute of Technology',
  'United States',
  '🇺🇸',
  'Cambridge, MA',
  'Located in Cambridge, MA, Massachusetts Institute of Technology combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United States. Popular programs include Computer Science, Engineering, Data Science, Artificial Intelligence, Physics.',
  '$32K - $61K/year',
  31572,
  61432,
  6.5,
  'Jan 1, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'medium',
  1,
  49,
  12978,
  27.5,
  476,
  'http://web.mit.edu',
  'http://web.mit.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of California, Los Angeles',
  'United States',
  '🇺🇸',
  'Los Angeles, CA',
  'University of California, Los Angeles is a leading research university in Los Angeles, CA, United States, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Physics, Law, Business Administration, Artificial Intelligence.',
  '$39K - $40K/year',
  38874,
  39919,
  7,
  'Jan 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'high',
  29,
  46,
  33769,
  22,
  373,
  'http://www.ucla.edu',
  'http://www.ucla.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Michigan-Flint',
  'United States',
  '🇺🇸',
  'United States',
  'University of Michigan-Flint stands out for its rigorous academic standards and internationally recognized degrees. Located in United States, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Finance, Law, Architecture.',
  '$30K - $39K/year',
  29693,
  39467,
  6.5,
  'Jan 1, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  33,
  31,
  11514,
  22.9,
  152,
  'http://www.umflint.edu',
  'http://www.umflint.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Michigan - Dearborn',
  'United States',
  '🇺🇸',
  'United States',
  'Located in United States, University of Michigan - Dearborn combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United States. Popular programs include Computer Science.',
  '$50K - $64K/year',
  49510,
  64040,
  7.5,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'high',
  33,
  39,
  47153,
  26.6,
  218,
  'http://www.umdearborn.edu',
  'http://www.umdearborn.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Leeds',
  'United Kingdom',
  '🇬🇧',
  'Leeds',
  'With a long tradition of academic excellence, University of Leeds in Leeds offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Business Administration, Data Science, Engineering, Medicine.',
  '$15K - $40K/year',
  15100,
  39936,
  7.5,
  'Oct 15, 2026',
  true,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  75,
  59,
  9008,
  51.6,
  357,
  'http://www.leeds.ac.uk',
  'http://www.leeds.ac.uk/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Oxford',
  'United Kingdom',
  '🇬🇧',
  'Oxford',
  'With a long tradition of academic excellence, University of Oxford in Oxford offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Engineering, Architecture, Psychology.',
  '$16K - $31K/year',
  16133,
  30840,
  7.5,
  'Jan 31, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'high',
  3,
  18,
  38864,
  32.8,
  122,
  'http://www.ox.ac.uk',
  'http://www.ox.ac.uk/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Bristol',
  'United Kingdom',
  '🇬🇧',
  'Bristol',
  'Located in Bristol, University of Bristol combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United Kingdom. Popular programs include Biology, Engineering, Architecture, Psychology.',
  '$22K - $32K/year',
  22320,
  31640,
  7,
  'Jan 31, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'high',
  55,
  18,
  8238,
  31.5,
  307,
  'https://www.bristol.ac.uk',
  'https://www.bristol.ac.uk/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Glasgow',
  'United Kingdom',
  '🇬🇧',
  'Glasgow',
  'With a long tradition of academic excellence, University of Glasgow in Glasgow offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Finance, Law, Architecture.',
  '$20K - $26K/year',
  20280,
  26249,
  6,
  'Mar 31, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'medium',
  76,
  58,
  16343,
  52.4,
  307,
  'http://www.gla.ac.uk',
  'http://www.gla.ac.uk/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Warwick',
  'United Kingdom',
  '🇬🇧',
  'Coventry',
  'University of Warwick is a leading research university in Coventry, United Kingdom, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Medicine, Psychology, Biology.',
  '$23K - $42K/year',
  23027,
  41959,
  6,
  'Jan 31, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'high',
  67,
  62,
  27159,
  57.1,
  238,
  'http://www.warwick.ac.uk',
  'http://www.warwick.ac.uk/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Cambridge',
  'United Kingdom',
  '🇬🇧',
  'Cambridge',
  'University of Cambridge is one of United Kingdom''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Psychology, Physics, Finance.',
  '$22K - $40K/year',
  22382,
  40495,
  7,
  'Jan 15, 2026',
  false,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'high',
  2,
  55,
  28500,
  44.1,
  329,
  'http://www.cam.ac.uk',
  'http://www.cam.ac.uk/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Edinburgh',
  'United Kingdom',
  '🇬🇧',
  'Edinburgh',
  'With a long tradition of academic excellence, University of Edinburgh in Edinburgh offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Biology, Finance, Engineering.',
  '$21K - $35K/year',
  20596,
  34885,
  6,
  'Mar 31, 2026',
  false,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'high',
  22,
  30,
  8048,
  38.1,
  320,
  'http://www.ed.ac.uk',
  'http://www.ed.ac.uk/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Imperial College London',
  'United Kingdom',
  '🇬🇧',
  'London',
  'Imperial College London stands out for its rigorous academic standards and internationally recognized degrees. Located in London, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Business Administration, Biology, Data Science.',
  '$17K - $36K/year',
  17234,
  35597,
  7,
  'Jan 31, 2026',
  false,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'high',
  6,
  15,
  40435,
  51.9,
  129,
  'http://www.imperial.ac.uk',
  'http://www.imperial.ac.uk/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Birmingham',
  'United Kingdom',
  '🇬🇧',
  'Birmingham',
  'University of Birmingham is one of United Kingdom''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Finance, Law, Architecture.',
  '$16K - $27K/year',
  16231,
  27282,
  6.5,
  'Jan 31, 2026',
  false,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'medium',
  84,
  61,
  18944,
  56.4,
  437,
  'http://www.bham.ac.uk',
  'http://www.bham.ac.uk/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Manchester',
  'United Kingdom',
  '🇬🇧',
  'Manchester',
  'University of Manchester stands out for its rigorous academic standards and internationally recognized degrees. Located in Manchester, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Psychology, Physics, Finance.',
  '$17K - $41K/year',
  17120,
  41329,
  6,
  'Jan 31, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'high',
  32,
  10,
  30293,
  55.5,
  395,
  'http://www.manchester.ac.uk',
  'http://www.manchester.ac.uk/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Nottingham',
  'United Kingdom',
  '🇬🇧',
  'Nottingham',
  'University of Nottingham stands out for its rigorous academic standards and internationally recognized degrees. Located in Nottingham, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Psychology, Physics, Finance.',
  '$24K - $40K/year',
  23853,
  39706,
  6,
  'Mar 31, 2026',
  true,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'medium',
  100,
  27,
  44065,
  33.4,
  384,
  'http://www.nottingham.ac.uk',
  'http://www.nottingham.ac.uk/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'The University of Sheffield',
  'United Kingdom',
  '🇬🇧',
  'United Kingdom',
  'Located in United Kingdom, The University of Sheffield combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United Kingdom. Popular programs include Computer Science, Psychology, Physics, Finance.',
  '$21K - $33K/year',
  21084,
  32575,
  7.5,
  'Mar 31, 2026',
  true,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'high',
  104,
  57,
  26740,
  38.1,
  245,
  'https://www.sheffield.ac.uk',
  'https://www.sheffield.ac.uk/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'King''s College London, University of London',
  'United Kingdom',
  '🇬🇧',
  'United Kingdom',
  'King''s College London, University of London is one of United Kingdom''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Architecture, Artificial Intelligence, Physics.',
  '$24K - $30K/year',
  23762,
  29575,
  6,
  'Jan 15, 2026',
  false,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'high',
  40,
  61,
  37339,
  44.9,
  211,
  'http://www.kcl.ac.uk',
  'http://www.kcl.ac.uk/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University College London, University of London',
  'United Kingdom',
  '🇬🇧',
  'United Kingdom',
  'University College London, University of London is a leading research university in United Kingdom, United Kingdom, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science.',
  '$16K - $26K/year',
  16150,
  25948,
  6.5,
  'Jan 15, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'high',
  9,
  34,
  38995,
  57,
  261,
  'http://www.ucl.ac.uk',
  'http://www.ucl.ac.uk/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'London School of Economics and Political Science, University of London',
  'United Kingdom',
  '🇬🇧',
  'United Kingdom',
  'London School of Economics and Political Science, University of London is a leading research university in United Kingdom, United Kingdom, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Business Administration, Economics, Finance, Data Science.',
  '$16K - $31K/year',
  15582,
  30567,
  6,
  'Jan 31, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  45,
  18,
  26749,
  57.6,
  314,
  'http://www.lse.ac.uk',
  'http://www.lse.ac.uk/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'McGill University',
  'Canada',
  '🇨🇦',
  'Montreal, QC',
  'McGill University is one of Canada''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Finance, Law, Architecture.',
  '$25K - $29K/year',
  24554,
  28796,
  6.5,
  'Feb 1, 2026',
  true,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'high',
  30,
  39,
  80858,
  24,
  615,
  'http://www.mcgill.ca',
  'http://www.mcgill.ca/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Queen''s University',
  'Canada',
  '🇨🇦',
  'Kingston, ON',
  'Queen''s University is a leading research university in Kingston, ON, Canada, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Physics, Law, Business Administration, Artificial Intelligence.',
  '$16K - $38K/year',
  16306,
  37851,
  7,
  'Mar 1, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  231,
  43,
  37947,
  24.3,
  378,
  'http://www.queensu.ca',
  'http://www.queensu.ca/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'McMaster University',
  'Canada',
  '🇨🇦',
  'Hamilton, ON',
  'McMaster University is a leading research university in Hamilton, ON, Canada, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Data Science, Engineering, Medicine.',
  '$20K - $29K/year',
  19950,
  28826,
  6,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  260,
  52,
  79555,
  33.5,
  399,
  'http://www.mcmaster.ca',
  'http://www.mcmaster.ca/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Dalhousie University',
  'Canada',
  '🇨🇦',
  'Halifax, NS',
  'Dalhousie University is a leading research university in Halifax, NS, Canada, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Physics, Economics, Law.',
  '$16K - $29K/year',
  15807,
  29246,
  6,
  'Feb 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  285,
  46,
  31559,
  15.8,
  503,
  'http://www.dal.ca',
  'http://www.dal.ca/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Ottawa',
  'Canada',
  '🇨🇦',
  'Ottawa, ON',
  'Located in Ottawa, ON, University of Ottawa combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Canada. Popular programs include Computer Science, Psychology, Physics, Finance.',
  '$20K - $37K/year',
  19557,
  37364,
  6.5,
  'Feb 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  203,
  59,
  72405,
  16.8,
  226,
  'http://www.uottawa.ca',
  'http://www.uottawa.ca/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Alberta',
  'Canada',
  '🇨🇦',
  'Edmonton, AB',
  'With a long tradition of academic excellence, University of Alberta in Edmonton, AB offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Engineering, Architecture, Psychology.',
  '$18K - $36K/year',
  18087,
  36443,
  7,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  111,
  63,
  47047,
  24.5,
  486,
  'http://www.ualberta.ca',
  'http://www.ualberta.ca/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Calgary',
  'Canada',
  '🇨🇦',
  'Calgary, AB',
  'Located in Calgary, AB, University of Calgary combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Canada. Popular programs include Artificial Intelligence, Economics, Medicine, Business Administration.',
  '$17K - $34K/year',
  17452,
  34384,
  6.5,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'medium',
  182,
  66,
  34412,
  24.9,
  158,
  'http://www.ucalgary.ca',
  'http://www.ucalgary.ca/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Toronto',
  'Canada',
  '🇨🇦',
  'Toronto, ON',
  'With a long tradition of academic excellence, University of Toronto in Toronto, ON offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Data Science, Engineering, Medicine.',
  '$21K - $26K/year',
  20695,
  25910,
  6.5,
  'Apr 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  21,
  46,
  85243,
  22.7,
  268,
  'http://www.utoronto.ca',
  'http://www.utoronto.ca/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Waterloo',
  'Canada',
  '🇨🇦',
  'Waterloo, ON',
  'University of Waterloo stands out for its rigorous academic standards and internationally recognized degrees. Located in Waterloo, ON, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Architecture, Physics, Economics, Law.',
  '$24K - $29K/year',
  24108,
  28568,
  6,
  'Apr 1, 2026',
  true,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'medium',
  112,
  68,
  86901,
  33.1,
  627,
  'http://www.uwaterloo.ca',
  'http://www.uwaterloo.ca/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Simon Fraser University',
  'Canada',
  '🇨🇦',
  'Burnaby, BC',
  'Simon Fraser University is one of Canada''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Architecture, Artificial Intelligence, Physics.',
  '$15K - $37K/year',
  15288,
  36598,
  6,
  'Jan 15, 2026',
  true,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'medium',
  318,
  46,
  79606,
  30.3,
  324,
  'http://www.sfu.ca',
  'http://www.sfu.ca/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of British Columbia',
  'Canada',
  '🇨🇦',
  'Vancouver, BC',
  'With a long tradition of academic excellence, University of British Columbia in Vancouver, BC offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Law, Business Administration, Artificial Intelligence.',
  '$15K - $31K/year',
  15036,
  30660,
  6.5,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  34,
  45,
  43589,
  26.5,
  332,
  'http://www.ubc.ca',
  'http://www.ubc.ca/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Trinity Western University',
  'Canada',
  '🇨🇦',
  'Canada',
  'Trinity Western University is one of Canada''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Artificial Intelligence, Data Science, Economics.',
  '$24K - $28K/year',
  23799,
  28168,
  7,
  'Apr 1, 2026',
  true,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'medium',
  114,
  61,
  40488,
  33.8,
  626,
  'http://www.twu.ca',
  'http://www.twu.ca/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Curtin University',
  'Australia',
  '🇦🇺',
  'Perth, WA',
  'Curtin University is one of Australia''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Data Science, Engineering, Medicine.',
  '$21K - $36K/year',
  21123,
  35675,
  6,
  'Jul 31, 2026',
  false,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'high',
  183,
  71,
  24196,
  44.7,
  446,
  'http://www.curtin.edu.au',
  'http://www.curtin.edu.au/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Monash University',
  'Australia',
  '🇦🇺',
  'Melbourne, VIC',
  'Located in Melbourne, VIC, Monash University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Australia. Popular programs include Psychology, Finance, Law, Architecture.',
  '$23K - $41K/year',
  23332,
  40932,
  6.5,
  'Jul 31, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'medium',
  42,
  42,
  49903,
  26.8,
  397,
  'http://www.monash.edu',
  'http://www.monash.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Macquarie University',
  'Australia',
  '🇦🇺',
  'Sydney, NSW',
  'Macquarie University is a leading research university in Sydney, NSW, Australia, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Psychology, Physics, Finance.',
  '$33K - $38K/year',
  33209,
  38437,
  6.5,
  'Mar 31, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  130,
  62,
  30772,
  39.6,
  137,
  'http://www.mq.edu.au',
  'http://www.mq.edu.au/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Sydney',
  'Australia',
  '🇦🇺',
  'Sydney, NSW',
  'With a long tradition of academic excellence, University of Sydney in Sydney, NSW offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Business Administration, Biology, Data Science.',
  '$33K - $40K/year',
  32978,
  39782,
  6,
  'Jul 31, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'medium',
  19,
  62,
  13914,
  47.1,
  146,
  'http://sydney.edu.au',
  'http://sydney.edu.au/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Adelaide',
  'Australia',
  '🇦🇺',
  'Adelaide, SA',
  'With a long tradition of academic excellence, University of Adelaide in Adelaide, SA offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Biology, Finance, Engineering.',
  '$35K - $47K/year',
  34862,
  47113,
  7,
  'Jul 31, 2026',
  true,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  89,
  70,
  11658,
  39.8,
  370,
  'http://www.adelaide.edu.au',
  'http://www.adelaide.edu.au/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Melbourne',
  'Australia',
  '🇦🇺',
  'Melbourne, VIC',
  'University of Melbourne is one of Australia''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science.',
  '$25K - $40K/year',
  25297,
  40243,
  6,
  'May 31, 2026',
  true,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'low',
  14,
  67,
  26724,
  43.8,
  277,
  'http://www.unimelb.edu.au',
  'http://www.unimelb.edu.au/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Wollongong',
  'Australia',
  '🇦🇺',
  'Wollongong, NSW',
  'University of Wollongong is a leading research university in Wollongong, NSW, Australia, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Biology, Finance, Engineering.',
  '$31K - $43K/year',
  30886,
  42715,
  6,
  'Jul 31, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'low',
  162,
  64,
  54914,
  27.6,
  347,
  'http://www.uow.edu.au',
  'http://www.uow.edu.au/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Queensland',
  'Australia',
  '🇦🇺',
  'Brisbane, QLD',
  'University of Queensland is a leading research university in Brisbane, QLD, Australia, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Business Administration, Biology, Data Science.',
  '$30K - $38K/year',
  30435,
  37987,
  7,
  'Jan 31, 2026',
  false,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'high',
  43,
  43,
  44222,
  47.4,
  247,
  'http://www.uq.edu.au',
  'http://www.uq.edu.au/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of New South Wales',
  'Australia',
  '🇦🇺',
  'Sydney, NSW',
  'University of New South Wales is a leading research university in Sydney, NSW, Australia, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Medicine, Psychology, Biology.',
  '$33K - $41K/year',
  33152,
  41374,
  6,
  'May 31, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  19,
  50,
  24295,
  44.2,
  162,
  'http://www.unsw.edu.au',
  'http://www.unsw.edu.au/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Australian National University',
  'Australia',
  '🇦🇺',
  'Canberra, ACT',
  'Australian National University stands out for its rigorous academic standards and internationally recognized degrees. Located in Canberra, ACT, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Law, Business Administration, Artificial Intelligence.',
  '$35K - $46K/year',
  34659,
  46172,
  7,
  'Mar 31, 2026',
  false,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'medium',
  435,
  35,
  25744,
  32.6,
  156,
  'http://www.anu.edu.au',
  'http://www.anu.edu.au/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Western Australia',
  'Australia',
  '🇦🇺',
  'Perth, WA',
  'Located in Perth, WA, University of Western Australia combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Australia. Popular programs include Computer Science, Economics, Medicine, Business Administration.',
  '$35K - $47K/year',
  34539,
  47047,
  6.5,
  'Mar 31, 2026',
  false,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  72,
  39,
  42909,
  34.3,
  237,
  'http://www.uwa.edu.au',
  'http://www.uwa.edu.au/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Bond University',
  'Australia',
  '🇦🇺',
  'Australia',
  'Bond University is a leading research university in Australia, Australia, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science.',
  '$34K - $45K/year',
  33766,
  44972,
  6,
  'Jul 31, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  480,
  41,
  16154,
  37.3,
  80,
  'http://www.bond.edu.au',
  'http://www.bond.edu.au/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Jacobs University Bremen',
  'Germany',
  '🇩🇪',
  'Germany',
  'Jacobs University Bremen stands out for its rigorous academic standards and internationally recognized degrees. Located in Germany, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Architecture, Artificial Intelligence, Physics.',
  '$0K - $2K/year',
  469,
  2474,
  6,
  'May 15, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'low',
  153,
  5,
  19562,
  29.1,
  87,
  'http://www.jacobs-university.de',
  'http://www.jacobs-university.de/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'SRH University of Applied Sciences',
  'Germany',
  '🇩🇪',
  'Germany',
  'Located in Germany, SRH University of Applied Sciences combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Germany. Popular programs include Engineering, Psychology, Physics, Finance.',
  '$0K - $3K/year',
  319,
  3119,
  6,
  'Jul 15, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'high',
  186,
  18,
  52764,
  15.3,
  246,
  'http://www.srh-berlin.de',
  'http://www.srh-berlin.de/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'International University in Germany',
  'Germany',
  '🇩🇪',
  'Germany',
  'International University in Germany is a leading research university in Germany, Germany, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Architecture, Physics, Economics, Law.',
  '$0K - $4K/year',
  102,
  3809,
  6,
  'May 15, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  200,
  9,
  30389,
  26.5,
  252,
  'http://www.i-u.de',
  'http://www.i-u.de/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Karlshochschule International University',
  'Germany',
  '🇩🇪',
  'Germany',
  'Located in Germany, Karlshochschule International University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Germany. Popular programs include Computer Science, Psychology, Physics, Finance.',
  '$0K - $2K/year',
  342,
  1631,
  6,
  'Jul 15, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  238,
  15,
  40239,
  16.9,
  87,
  'http://www.karlshochschule.de',
  'http://www.karlshochschule.de/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Rosenheim University of Applied Sciences',
  'Germany',
  '🇩🇪',
  'Germany',
  'Rosenheim University of Applied Sciences is a leading research university in Germany, Germany, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Physics, Economics, Law.',
  '$0K - $2K/year',
  153,
  1729,
  6.5,
  'Jan 15, 2026',
  false,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'low',
  254,
  8,
  44751,
  34.9,
  130,
  'https://th-rosenheim.de',
  'https://th-rosenheim.de/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'CODE University of Applied Sciences Berlin',
  'Germany',
  '🇩🇪',
  'Germany',
  'CODE University of Applied Sciences Berlin is a leading research university in Germany, Germany, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Psychology, Physics, Finance.',
  '$0K - $4K/year',
  56,
  3892,
  6,
  'Jul 15, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  286,
  5,
  28751,
  13.7,
  253,
  'http://code.berlin',
  'http://code.berlin/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Westphalian University of Applied Sciences',
  'Germany',
  '🇩🇪',
  'Germany',
  'Located in Germany, Westphalian University of Applied Sciences combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Germany. Popular programs include Computer Science, Physics, Economics, Law.',
  '$0K - $3K/year',
  414,
  3235,
  6.5,
  'Jul 15, 2026',
  false,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'high',
  311,
  18,
  47140,
  13.3,
  226,
  'https://www.w-hs.de',
  'https://www.w-hs.de/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Schiller International University, Heidelberg',
  'Germany',
  '🇩🇪',
  'Germany',
  'Schiller International University, Heidelberg is a leading research university in Germany, Germany, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Business Administration, Biology, Data Science.',
  '$0K - $4K/year',
  484,
  3542,
  6.5,
  'May 15, 2026',
  false,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  337,
  14,
  23500,
  10.4,
  231,
  'http://www.siu-heidelberg.de',
  'http://www.siu-heidelberg.de/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Technical University of Applied Sciences Augsburg',
  'Germany',
  '🇩🇪',
  'Germany',
  'Technical University of Applied Sciences Augsburg stands out for its rigorous academic standards and internationally recognized degrees. Located in Germany, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Engineering, Data Science, Artificial Intelligence, Physics.',
  '$0K - $2K/year',
  408,
  2244,
  6.5,
  'Jan 15, 2026',
  true,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'medium',
  364,
  18,
  17226,
  24.7,
  294,
  'https://www.tha.de',
  'https://www.tha.de/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Hamburg University of Applied Sciences (HAW Hamburg)',
  'Germany',
  '🇩🇪',
  'Germany',
  'Hamburg University of Applied Sciences (HAW Hamburg) is a leading research university in Germany, Germany, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Artificial Intelligence, Economics, Medicine, Business Administration.',
  '$0K - $2K/year',
  154,
  2101,
  6,
  'Jan 15, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'low',
  387,
  16,
  38187,
  24.5,
  254,
  'https://haw-hamburg.de',
  'https://haw-hamburg.de/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Hochschule Mittweida, University of Applied Sciences',
  'Germany',
  '🇩🇪',
  'Germany',
  'Hochschule Mittweida, University of Applied Sciences is one of Germany''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Business Administration, Biology, Data Science.',
  '$0K - $2K/year',
  165,
  2297,
  6,
  'May 15, 2026',
  true,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'high',
  405,
  25,
  36111,
  15.2,
  273,
  'http://www.htwm.de',
  'http://www.htwm.de/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'International School of New Media, University of Lübeck',
  'Germany',
  '🇩🇪',
  'Germany',
  'With a long tradition of academic excellence, International School of New Media, University of Lübeck in Germany offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Engineering, Architecture, Psychology.',
  '$0K - $3K/year',
  491,
  3257,
  6,
  'Apr 15, 2026',
  false,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'low',
  436,
  16,
  19275,
  15.1,
  133,
  'http://www.isnm.de',
  'http://www.isnm.de/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Utrecht University',
  'Netherlands',
  '🇳🇱',
  'Utrecht',
  'Utrecht University stands out for its rigorous academic standards and internationally recognized degrees. Located in Utrecht, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Economics, Medicine, Business Administration.',
  '$10K - $20K/year',
  10316,
  20423,
  6.5,
  'May 1, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  107,
  36,
  12093,
  31.6,
  77,
  'http://www.uu.nl',
  'http://www.uu.nl/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Groningen',
  'Netherlands',
  '🇳🇱',
  'Groningen',
  'University of Groningen is one of Netherlands''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Business Administration, Biology, Data Science.',
  '$10K - $16K/year',
  9781,
  16464,
  7,
  'Apr 1, 2026',
  true,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'high',
  139,
  55,
  24979,
  32.5,
  113,
  'http://www.rug.nl',
  'http://www.rug.nl/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Amsterdam',
  'Netherlands',
  '🇳🇱',
  'Amsterdam',
  'University of Amsterdam is a leading research university in Amsterdam, Netherlands, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Law, Business Administration, Artificial Intelligence.',
  '$11K - $18K/year',
  11477,
  17503,
  6,
  'Jan 15, 2026',
  false,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  53,
  31,
  21120,
  24.5,
  199,
  'http://www.uva.nl',
  'http://www.uva.nl/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Erasmus University Rotterdam',
  'Netherlands',
  '🇳🇱',
  'Rotterdam',
  'Located in Rotterdam, Erasmus University Rotterdam combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Netherlands. Popular programs include Finance, Architecture, Artificial Intelligence, Physics.',
  '$11K - $19K/year',
  11090,
  18988,
  6.5,
  'Feb 1, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'medium',
  176,
  34,
  27410,
  33.3,
  78,
  'http://www.eur.nl',
  'http://www.eur.nl/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Vrije Universiteit Amsterdam',
  'Netherlands',
  '🇳🇱',
  'Amsterdam',
  'Located in Amsterdam, Vrije Universiteit Amsterdam combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Netherlands. Popular programs include Computer Science, Architecture, Artificial Intelligence, Physics.',
  '$9K - $20K/year',
  8709,
  20369,
  6.5,
  'Feb 1, 2026',
  false,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  207,
  48,
  35001,
  38.1,
  121,
  'http://www.vu.nl',
  'http://www.vu.nl/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Delft University of Technology',
  'Netherlands',
  '🇳🇱',
  'Delft',
  'Delft University of Technology is one of Netherlands''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Engineering, Data Science, Artificial Intelligence, Physics.',
  '$12K - $18K/year',
  11746,
  17764,
  6,
  'May 1, 2026',
  true,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'medium',
  47,
  23,
  20368,
  16.6,
  180,
  'http://www.tudelft.nl',
  'http://www.tudelft.nl/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Eindhoven University of Technology',
  'Netherlands',
  '🇳🇱',
  'Eindhoven',
  'Eindhoven University of Technology is a leading research university in Eindhoven, Netherlands, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Engineering, Data Science, Artificial Intelligence, Physics.',
  '$11K - $18K/year',
  10872,
  17677,
  7,
  'Feb 1, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  124,
  43,
  34755,
  33.1,
  149,
  'http://www.tue.nl',
  'http://www.tue.nl/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Zuyd University',
  'Netherlands',
  '🇳🇱',
  'Netherlands',
  'Zuyd University stands out for its rigorous academic standards and internationally recognized degrees. Located in Netherlands, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Finance, Architecture, Artificial Intelligence, Physics.',
  '$11K - $21K/year',
  10693,
  21466,
  7,
  'Apr 1, 2026',
  true,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'medium',
  437,
  28,
  32124,
  24.4,
  76,
  'http://www.zuyd.nl',
  'http://www.zuyd.nl/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'École Polytechnique',
  'France',
  '🇫🇷',
  'Palaiseau',
  'École Polytechnique is a leading research university in Palaiseau, France, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Engineering, Data Science, Artificial Intelligence, Physics.',
  '$6K - $10K/year',
  6055,
  10047,
  6,
  'Apr 30, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  38,
  26,
  12034,
  23.3,
  250,
  'http://www.polytechnique.fr',
  'http://www.polytechnique.fr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Université Paris-Saclay',
  'France',
  '🇫🇷',
  'Paris',
  'Université Paris-Saclay stands out for its rigorous academic standards and internationally recognized degrees. Located in Paris, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Medicine, Psychology, Biology.',
  '$3K - $16K/year',
  3266,
  16449,
  6,
  'Apr 30, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'high',
  71,
  38,
  43609,
  13.3,
  134,
  'https://www.universite-paris-saclay.fr',
  'https://www.universite-paris-saclay.fr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'American University of Paris',
  'France',
  '🇫🇷',
  'France',
  'American University of Paris is one of France''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Economics, Business Administration, Biology, Data Science.',
  '$4K - $17K/year',
  3979,
  17081,
  6,
  'Apr 30, 2026',
  false,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'high',
  236,
  29,
  15277,
  18.7,
  339,
  'http://www.aup.fr',
  'http://www.aup.fr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Institut d''Etudes Politiques de Paris (Sciences Po)',
  'France',
  '🇫🇷',
  'France',
  'Institut d''Etudes Politiques de Paris (Sciences Po) stands out for its rigorous academic standards and internationally recognized degrees. Located in France, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Artificial Intelligence, Data Science, Economics.',
  '$4K - $12K/year',
  4446,
  12480,
  6.5,
  'Jan 10, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'high',
  250,
  30,
  30300,
  18.3,
  266,
  'http://www.sciences-po.fr',
  'http://www.sciences-po.fr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Burgundy',
  'France',
  '🇫🇷',
  'France',
  'University of Burgundy stands out for its rigorous academic standards and internationally recognized degrees. Located in France, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science.',
  '$4K - $14K/year',
  3960,
  13840,
  6,
  'Jan 10, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  412,
  17,
  32840,
  25.7,
  156,
  'https://u-bourgogne.fr',
  'https://u-bourgogne.fr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Schiller International University, Paris',
  'France',
  '🇫🇷',
  'France',
  'Schiller International University, Paris stands out for its rigorous academic standards and internationally recognized degrees. Located in France, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Physics, Economics, Law.',
  '$6K - $15K/year',
  6454,
  15210,
  6.5,
  'Feb 28, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  431,
  21,
  43309,
  21.3,
  167,
  'http://www.schillerparis.com',
  'http://www.schillerparis.com/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Schiller International University, Strasbourg',
  'France',
  '🇫🇷',
  'France',
  'Schiller International University, Strasbourg stands out for its rigorous academic standards and internationally recognized degrees. Located in France, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Medicine, Biology, Finance, Engineering.',
  '$7K - $11K/year',
  7376,
  10844,
  6.5,
  'Mar 31, 2026',
  true,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'medium',
  464,
  31,
  51849,
  19.1,
  193,
  'http://www.schillerstrasbourg.com',
  'http://www.schillerstrasbourg.com/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Institute Français de la Mode',
  'France',
  '🇫🇷',
  'France',
  'Institute Français de la Mode is a leading research university in France, France, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Engineering, Data Science, Artificial Intelligence, Physics.',
  '$5K - $16K/year',
  4566,
  16363,
  6.5,
  'Feb 28, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  478,
  30,
  40030,
  15.7,
  226,
  'https://www.ifmparis.fr',
  'https://www.ifmparis.fr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Ege University',
  'Turkey',
  '🇹🇷',
  'Izmir',
  'Ege University stands out for its rigorous academic standards and internationally recognized degrees. Located in Izmir, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Biology, Finance, Engineering.',
  '$5K - $7K/year',
  5319,
  7360,
  6.5,
  'Feb 28, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  510,
  42,
  22133,
  7.5,
  105,
  'http://www.ege.edu.tr',
  'http://www.ege.edu.tr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Ankara University',
  'Turkey',
  '🇹🇷',
  'Ankara',
  'Ankara University is a leading research university in Ankara, Turkey, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science.',
  '$6K - $9K/year',
  5723,
  8521,
  5.5,
  'Apr 30, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  528,
  53,
  39409,
  20,
  230,
  'http://www.ankara.edu.tr',
  'http://www.ankara.edu.tr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Bilkent University',
  'Turkey',
  '🇹🇷',
  'Ankara',
  'With a long tradition of academic excellence, Bilkent University in Ankara offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Biology, Finance, Engineering.',
  '$4K - $11K/year',
  4202,
  11453,
  5.5,
  'Mar 15, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'medium',
  564,
  63,
  27221,
  9.8,
  71,
  'http://www.bilkent.edu.tr',
  'http://www.bilkent.edu.tr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Marmara University',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'With a long tradition of academic excellence, Marmara University in Istanbul offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Data Science, Engineering, Medicine.',
  '$6K - $7K/year',
  5814,
  7202,
  6.5,
  'Apr 30, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'medium',
  575,
  32,
  56198,
  17.4,
  185,
  'http://www.marmara.edu.tr',
  'http://www.marmara.edu.tr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Sabanci University',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'With a long tradition of academic excellence, Sabanci University in Istanbul offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science.',
  '$5K - $9K/year',
  5415,
  9492,
  6.5,
  'Jan 31, 2026',
  false,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'medium',
  603,
  29,
  47909,
  6.2,
  175,
  'http://www.sabanciuniv.edu.tr',
  'http://www.sabanciuniv.edu.tr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Istanbul University',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'With a long tradition of academic excellence, Istanbul University in Istanbul offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Artificial Intelligence, Economics, Medicine, Business Administration.',
  '$3K - $12K/year',
  3112,
  11894,
  6,
  'Jan 31, 2026',
  false,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  633,
  28,
  36652,
  5.8,
  163,
  'http://www.istanbul.edu.tr',
  'http://www.istanbul.edu.tr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Hacettepe University',
  'Turkey',
  '🇹🇷',
  'Ankara',
  'Hacettepe University is one of Turkey''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Business Administration, Biology, Data Science.',
  '$5K - $7K/year',
  5482,
  7165,
  6,
  'Feb 28, 2026',
  true,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'medium',
  664,
  59,
  9057,
  19.7,
  57,
  'http://www.hun.edu.tr',
  'http://www.hun.edu.tr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Istanbul Technical University',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Istanbul Technical University stands out for its rigorous academic standards and internationally recognized degrees. Located in Istanbul, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Engineering, Data Science, Artificial Intelligence, Physics.',
  '$6K - $12K/year',
  5714,
  11798,
  5.5,
  'Mar 15, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'high',
  685,
  42,
  40850,
  14.6,
  219,
  'http://www.itu.edu.tr',
  'http://www.itu.edu.tr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Izmir Institute of Technology',
  'Turkey',
  '🇹🇷',
  'Izmir',
  'Located in Izmir, Izmir Institute of Technology combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Turkey. Popular programs include Computer Science, Engineering, Data Science, Artificial Intelligence, Physics.',
  '$4K - $12K/year',
  4076,
  11837,
  6.5,
  'Jan 31, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  704,
  58,
  42173,
  17.7,
  249,
  'http://www.iyte.edu.tr',
  'http://www.iyte.edu.tr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Middle East Technical University',
  'Turkey',
  '🇹🇷',
  'Ankara',
  'Middle East Technical University is a leading research university in Ankara, Turkey, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Engineering, Data Science, Artificial Intelligence, Physics.',
  '$6K - $10K/year',
  5637,
  10062,
  6,
  'Mar 15, 2026',
  false,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  733,
  38,
  25159,
  9.9,
  151,
  'http://www.metu.edu.tr',
  'http://www.metu.edu.tr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Cag University',
  'Turkey',
  '🇹🇷',
  'Turkey',
  'Cag University is a leading research university in Turkey, Turkey, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Artificial Intelligence, Data Science, Economics.',
  '$6K - $11K/year',
  5753,
  11195,
  5.5,
  'Mar 15, 2026',
  false,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  752,
  60,
  9124,
  9,
  183,
  'http://www.cag.edu.tr',
  'http://www.cag.edu.tr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Koç University',
  'Turkey',
  '🇹🇷',
  'Turkey',
  'Koç University is a leading research university in Turkey, Turkey, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Law, Business Administration, Artificial Intelligence.',
  '$4K - $10K/year',
  3597,
  10251,
  5.5,
  'Jan 31, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  777,
  44,
  12929,
  9.7,
  167,
  'http://www.ku.edu.tr',
  'http://www.ku.edu.tr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'MEF University',
  'Turkey',
  '🇹🇷',
  'Turkey',
  'MEF University stands out for its rigorous academic standards and internationally recognized degrees. Located in Turkey, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Economics, Business Administration, Biology, Data Science.',
  '$4K - $10K/year',
  3794,
  9979,
  6,
  'Feb 28, 2026',
  false,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'medium',
  813,
  26,
  47634,
  19,
  47,
  'http://www.mef.edu.tr',
  'http://www.mef.edu.tr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'TED University',
  'Turkey',
  '🇹🇷',
  'Turkey',
  'TED University is a leading research university in Turkey, Turkey, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Psychology, Physics, Finance.',
  '$4K - $8K/year',
  4200,
  7670,
  5.5,
  'Feb 28, 2026',
  false,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'high',
  833,
  26,
  39022,
  13.5,
  206,
  'http://www.tedu.edu.tr',
  'http://www.tedu.edu.tr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Isik University',
  'Turkey',
  '🇹🇷',
  'Turkey',
  'Isik University is one of Turkey''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Biology, Finance, Engineering.',
  '$4K - $8K/year',
  3713,
  8031,
  5.5,
  'Jan 31, 2026',
  true,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'medium',
  850,
  45,
  11527,
  18.6,
  61,
  'http://www.isikun.edu.tr',
  'http://www.isikun.edu.tr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Singapore Management University',
  'Singapore',
  '🇸🇬',
  'Singapore',
  'Singapore Management University stands out for its rigorous academic standards and internationally recognized degrees. Located in Singapore, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Business Administration, Economics, Finance, Data Science.',
  '$20K - $27K/year',
  19794,
  27204,
  6.5,
  'Apr 30, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  51,
  18,
  15025,
  33.8,
  63,
  'https://www.smu.edu.sg',
  'https://www.smu.edu.sg/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Nanyang Technological University',
  'Singapore',
  '🇸🇬',
  'Singapore',
  'Nanyang Technological University is a leading research university in Singapore, Singapore, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Engineering, Data Science, Artificial Intelligence, Physics.',
  '$19K - $25K/year',
  19003,
  25103,
  6.5,
  'Feb 28, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  89,
  19,
  20586,
  37.3,
  91,
  'https://www.ntu.edu.sg',
  'https://www.ntu.edu.sg/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'National University of Singapore',
  'Singapore',
  '🇸🇬',
  'Singapore',
  'National University of Singapore is one of Singapore''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Business Administration, Biology, Data Science.',
  '$16K - $27K/year',
  15780,
  27147,
  7,
  'Feb 28, 2026',
  false,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'medium',
  8,
  22,
  11310,
  49,
  102,
  'https://www.nus.edu',
  'https://www.nus.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of the Arts Singapore',
  'Singapore',
  '🇸🇬',
  'Singapore',
  'With a long tradition of academic excellence, University of the Arts Singapore in Singapore offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Economics, Medicine, Business Administration.',
  '$17K - $28K/year',
  16931,
  27589,
  7,
  'Apr 30, 2026',
  true,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  138,
  17,
  29628,
  39.1,
  195,
  'https://www.uas.edu.sg',
  'https://www.uas.edu.sg/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Singapore University of Social Sciences',
  'Singapore',
  '🇸🇬',
  'Singapore',
  'Singapore University of Social Sciences is a leading research university in Singapore, Singapore, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science.',
  '$17K - $30K/year',
  16540,
  29895,
  6.5,
  'Feb 28, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  157,
  6,
  25114,
  38.8,
  223,
  'https://www.suss.edu.sg',
  'https://www.suss.edu.sg/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Singapore University of Technology and Design',
  'Singapore',
  '🇸🇬',
  'Singapore',
  'Singapore University of Technology and Design is a leading research university in Singapore, Singapore, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Engineering, Data Science, Artificial Intelligence, Physics.',
  '$20K - $33K/year',
  20002,
  32594,
  6.5,
  'Apr 30, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  183,
  8,
  36323,
  40.7,
  88,
  'https://www.sutd.edu.sg',
  'https://www.sutd.edu.sg/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Keio University',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Located in Tokyo, Keio University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Japan. Popular programs include Computer Science, Finance, Law, Architecture.',
  '$5K - $13K/year',
  5293,
  13489,
  5.5,
  'Feb 28, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'low',
  112,
  47,
  29183,
  19.8,
  255,
  'http://www.keio.ac.jp',
  'http://www.keio.ac.jp/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Kobe University',
  'Japan',
  '🇯🇵',
  'Kobe',
  'Kobe University is a leading research university in Kobe, Japan, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Medicine, Psychology, Biology.',
  '$8K - $12K/year',
  7752,
  11936,
  5.5,
  'Feb 28, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'high',
  137,
  38,
  16173,
  17.5,
  181,
  'http://www.kobe-u.ac.jp',
  'http://www.kobe-u.ac.jp/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Kyoto University',
  'Japan',
  '🇯🇵',
  'Kyoto',
  'Kyoto University is a leading research university in Kyoto, Japan, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Medicine, Psychology, Biology.',
  '$8K - $11K/year',
  7748,
  11188,
  6,
  'Feb 28, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'high',
  158,
  34,
  36986,
  24.4,
  49,
  'http://www.kyoto-u.ac.jp',
  'http://www.kyoto-u.ac.jp/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Osaka University',
  'Japan',
  '🇯🇵',
  'Osaka',
  'Osaka University stands out for its rigorous academic standards and internationally recognized degrees. Located in Osaka, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Psychology, Physics, Finance.',
  '$6K - $13K/year',
  5505,
  13092,
  5.5,
  'Jun 30, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  186,
  57,
  49168,
  24,
  271,
  'http://www.osaka-u.ac.jp',
  'http://www.osaka-u.ac.jp/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Kyushu University',
  'Japan',
  '🇯🇵',
  'Fukuoka',
  'Kyushu University is a leading research university in Fukuoka, Japan, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Physics, Economics, Law.',
  '$6K - $14K/year',
  6132,
  13884,
  6,
  'Jun 30, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'low',
  201,
  34,
  33113,
  18.3,
  160,
  'http://www.kyushu-u.ac.jp',
  'http://www.kyushu-u.ac.jp/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Nagoya University',
  'Japan',
  '🇯🇵',
  'Nagoya',
  'Nagoya University stands out for its rigorous academic standards and internationally recognized degrees. Located in Nagoya, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Biology, Finance, Engineering.',
  '$6K - $11K/year',
  6085,
  10874,
  6,
  'Feb 28, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  228,
  51,
  11744,
  6,
  224,
  'http://www.nagoya-u.ac.jp',
  'http://www.nagoya-u.ac.jp/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Tohoku University',
  'Japan',
  '🇯🇵',
  'Sendai',
  'With a long tradition of academic excellence, Tohoku University in Sendai offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science.',
  '$5K - $13K/year',
  5088,
  12769,
  6,
  'Dec 1, 2026',
  false,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'low',
  259,
  44,
  26383,
  17.9,
  212,
  'http://www.tohoku.ac.jp',
  'http://www.tohoku.ac.jp/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Waseda University',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'With a long tradition of academic excellence, Waseda University in Tokyo offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Psychology, Physics, Finance.',
  '$8K - $12K/year',
  7832,
  12401,
  6.5,
  'Dec 1, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'medium',
  283,
  47,
  10924,
  9,
  61,
  'http://www.waseda.ac.jp',
  'http://www.waseda.ac.jp/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Hokkaido University',
  'Japan',
  '🇯🇵',
  'Sapporo',
  'Located in Sapporo, Hokkaido University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Japan. Popular programs include Engineering, Psychology, Physics, Finance.',
  '$5K - $12K/year',
  5475,
  12189,
  6.5,
  'Jun 30, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'high',
  312,
  36,
  24315,
  21.6,
  238,
  'http://www.hokudai.ac.jp',
  'http://www.hokudai.ac.jp/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Tokyo',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'University of Tokyo is one of Japan''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Medicine, Psychology, Biology.',
  '$7K - $14K/year',
  7170,
  14079,
  6.5,
  'Dec 1, 2026',
  false,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'medium',
  333,
  46,
  19441,
  6.7,
  210,
  'http://www.u-tokyo.ac.jp',
  'http://www.u-tokyo.ac.jp/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Hiroshima University',
  'Japan',
  '🇯🇵',
  'Hiroshima',
  'Located in Hiroshima, Hiroshima University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Japan. Popular programs include Physics, Law, Business Administration, Artificial Intelligence.',
  '$5K - $13K/year',
  5077,
  13323,
  6.5,
  'Jun 30, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'high',
  354,
  34,
  42822,
  12.5,
  219,
  'http://www.hiroshima-u.ac.jp',
  'http://www.hiroshima-u.ac.jp/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Osaka University of Arts',
  'Japan',
  '🇯🇵',
  'Japan',
  'Osaka University of Arts is one of Japan''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Psychology, Finance, Law, Architecture.',
  '$5K - $14K/year',
  5471,
  13596,
  5.5,
  'Dec 1, 2026',
  false,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'high',
  386,
  48,
  49597,
  6.2,
  162,
  'http://www.osaka-geidai.ac.jp',
  'http://www.osaka-geidai.ac.jp/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Seoul National University',
  'South Korea',
  '🇰🇷',
  'Seoul',
  'Located in Seoul, Seoul National University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of South Korea. Popular programs include Physics, Law, Business Administration, Artificial Intelligence.',
  '$8K - $12K/year',
  7543,
  11974,
  6,
  'Mar 15, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'high',
  151,
  57,
  10500,
  5.7,
  90,
  'https://www.snu.ac.kr',
  'https://www.snu.ac.kr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Korea Advanced Institute of Science and Technology',
  'South Korea',
  '🇰🇷',
  'South Korea',
  'Korea Advanced Institute of Science and Technology is one of South Korea''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Engineering, Data Science, Artificial Intelligence, Physics.',
  '$7K - $13K/year',
  6786,
  13052,
  6.5,
  'Oct 31, 2026',
  false,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'low',
  181,
  22,
  23568,
  5.6,
  121,
  'https://www.kaist.ac.kr',
  'https://www.kaist.ac.kr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Yonsei University',
  'South Korea',
  '🇰🇷',
  'Seoul',
  'Yonsei University is one of South Korea''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Biology, Finance, Engineering.',
  '$5K - $14K/year',
  5276,
  14188,
  6.5,
  'Mar 15, 2026',
  false,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'medium',
  208,
  20,
  19845,
  17.4,
  57,
  'https://www.yonsei.ac.kr',
  'https://www.yonsei.ac.kr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Korea University',
  'South Korea',
  '🇰🇷',
  'Seoul',
  'Located in Seoul, Korea University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of South Korea. Popular programs include Medicine, Biology, Finance, Engineering.',
  '$6K - $11K/year',
  6304,
  11067,
  6.5,
  'Sep 15, 2026',
  true,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'medium',
  231,
  43,
  21781,
  15.9,
  212,
  'https://www.korea.ac.kr',
  'https://www.korea.ac.kr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Sungkyunkwan University',
  'South Korea',
  '🇰🇷',
  'Seoul',
  'Sungkyunkwan University stands out for its rigorous academic standards and internationally recognized degrees. Located in Seoul, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Medicine, Psychology, Biology.',
  '$7K - $11K/year',
  6695,
  10555,
  6.5,
  'Sep 15, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  261,
  47,
  32019,
  16.3,
  184,
  'https://www.skku.edu',
  'https://www.skku.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Hanyang University',
  'South Korea',
  '🇰🇷',
  'Seoul',
  'With a long tradition of academic excellence, Hanyang University in Seoul offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Economics, Business Administration, Biology, Data Science.',
  '$6K - $12K/year',
  5989,
  12178,
  6.5,
  'Feb 28, 2026',
  false,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'high',
  280,
  31,
  23593,
  13.6,
  195,
  'https://www.hanyang.ac.kr',
  'https://www.hanyang.ac.kr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Pohang University of Science and Technology',
  'South Korea',
  '🇰🇷',
  'Pohang',
  'Located in Pohang, Pohang University of Science and Technology combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of South Korea. Popular programs include Computer Science, Engineering, Data Science, Artificial Intelligence, Physics.',
  '$7K - $15K/year',
  6534,
  14891,
  6.5,
  'Mar 15, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'low',
  311,
  47,
  24543,
  14.4,
  101,
  'https://www.postech.ac.kr',
  'https://www.postech.ac.kr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Sogang University',
  'South Korea',
  '🇰🇷',
  'Seoul',
  'Located in Seoul, Sogang University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of South Korea. Popular programs include Computer Science, Psychology, Physics, Finance.',
  '$5K - $10K/year',
  5319,
  10006,
  6.5,
  'Oct 31, 2026',
  false,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'low',
  327,
  49,
  19413,
  10.2,
  62,
  'https://www.sogang.ac.kr',
  'https://www.sogang.ac.kr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Ewha Womans University',
  'South Korea',
  '🇰🇷',
  'South Korea',
  'Ewha Womans University stands out for its rigorous academic standards and internationally recognized degrees. Located in South Korea, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Architecture, Physics, Economics, Law.',
  '$7K - $14K/year',
  7451,
  14418,
  6.5,
  'Feb 28, 2026',
  true,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'high',
  364,
  34,
  33972,
  15.1,
  162,
  'https://www.ewha.ac.kr',
  'https://www.ewha.ac.kr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Pusan National University',
  'South Korea',
  '🇰🇷',
  'South Korea',
  'Pusan National University stands out for its rigorous academic standards and internationally recognized degrees. Located in South Korea, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Medicine, Psychology, Biology.',
  '$6K - $12K/year',
  5644,
  11793,
  6,
  'Oct 31, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'high',
  375,
  20,
  38096,
  13,
  155,
  'https://www.pusan.ac.kr',
  'https://www.pusan.ac.kr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Kyung Hee University',
  'South Korea',
  '🇰🇷',
  'South Korea',
  'Kyung Hee University is a leading research university in South Korea, South Korea, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Engineering, Architecture, Psychology.',
  '$7K - $12K/year',
  6515,
  12254,
  6.5,
  'Feb 28, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'high',
  405,
  45,
  37967,
  13.4,
  95,
  'https://www.khu.ac.kr',
  'https://www.khu.ac.kr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Chung-Ang University',
  'South Korea',
  '🇰🇷',
  'South Korea',
  'Chung-Ang University is one of South Korea''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Economics, Business Administration, Biology, Data Science.',
  '$6K - $13K/year',
  6355,
  12875,
  6.5,
  'Oct 31, 2026',
  false,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'medium',
  427,
  32,
  38006,
  15.8,
  110,
  'https://www.cau.ac.kr',
  'https://www.cau.ac.kr/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Universiti Malaya',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'With a long tradition of academic excellence, Universiti Malaya in Kuala Lumpur offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Computer Science, Medicine, Psychology, Biology.',
  '$6K - $9K/year',
  5820,
  9312,
  5.5,
  'May 31, 2026',
  false,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'medium',
  208,
  53,
  11622,
  25.6,
  101,
  'http://www.um.edu.my',
  'http://www.um.edu.my/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Universiti Putra Malaysia',
  'Malaysia',
  '🇲🇾',
  'Serdang',
  'Located in Serdang, Universiti Putra Malaysia combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Malaysia. Popular programs include Computer Science, Biology, Finance, Engineering.',
  '$6K - $12K/year',
  6346,
  12108,
  6.5,
  'May 31, 2026',
  false,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  239,
  51,
  32419,
  11.7,
  181,
  'http://www.upm.edu.my',
  'http://www.upm.edu.my/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Universiti Sains Malaysia',
  'Malaysia',
  '🇲🇾',
  'Penang',
  'Universiti Sains Malaysia stands out for its rigorous academic standards and internationally recognized degrees. Located in Penang, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Economics, Medicine, Business Administration.',
  '$6K - $9K/year',
  5968,
  9165,
  6.5,
  'Mar 31, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'high',
  259,
  44,
  17415,
  26.2,
  120,
  'http://www.usm.my',
  'http://www.usm.my/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Universiti Teknologi Malaysia',
  'Malaysia',
  '🇲🇾',
  'Johor Bahru',
  'Universiti Teknologi Malaysia is one of Malaysia''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Computer Science, Economics, Medicine, Business Administration.',
  '$6K - $14K/year',
  6210,
  13979,
  5.5,
  'May 31, 2026',
  false,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'high',
  287,
  72,
  39138,
  21.7,
  118,
  'http://www.utm.my',
  'http://www.utm.my/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Universiti Kebangsaan Malaysia',
  'Malaysia',
  '🇲🇾',
  'Bangi',
  'Located in Bangi, Universiti Kebangsaan Malaysia combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Malaysia. Popular programs include Business Administration, Data Science, Engineering, Medicine.',
  '$4K - $8K/year',
  4118,
  8322,
  6,
  'Oct 31, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'medium',
  310,
  76,
  19853,
  23,
  158,
  'http://www.ukm.my',
  'http://www.ukm.my/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'UCSI University',
  'Malaysia',
  '🇲🇾',
  'Malaysia',
  'UCSI University stands out for its rigorous academic standards and internationally recognized degrees. Located in Malaysia, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Medicine, Psychology, Biology.',
  '$5K - $13K/year',
  4764,
  13222,
  6,
  'Oct 31, 2026',
  true,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'low',
  337,
  64,
  24308,
  18,
  157,
  'http://www.ucsi.edu.my',
  'http://www.ucsi.edu.my/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Aimst University',
  'Malaysia',
  '🇲🇾',
  'Malaysia',
  'With a long tradition of academic excellence, Aimst University in Malaysia offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration. Popular programs include Economics, Business Administration, Biology, Data Science.',
  '$5K - $8K/year',
  5267,
  8231,
  6,
  'Aug 31, 2026',
  true,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  360,
  75,
  15716,
  17.8,
  75,
  'http://www.aimst.edu.my',
  'http://www.aimst.edu.my/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Asia E University',
  'Malaysia',
  '🇲🇾',
  'Malaysia',
  'Asia E University is a leading research university in Malaysia, Malaysia, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Business Administration, Biology, Data Science.',
  '$5K - $11K/year',
  4972,
  11255,
  5.5,
  'Mar 31, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  376,
  43,
  31041,
  17.6,
  140,
  'http://www.aeu.edu.my',
  'http://www.aeu.edu.my/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Basel',
  'Switzerland',
  '🇨🇭',
  'Basel',
  'University of Basel is a leading research university in Basel, Switzerland, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Biology, Engineering, Architecture, Psychology.',
  '$1K - $2K/year',
  1358,
  2073,
  7.5,
  'Dec 15, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'high',
  69,
  26,
  23992,
  49.5,
  155,
  'http://www.unibas.ch',
  'http://www.unibas.ch/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'University of Geneva',
  'Switzerland',
  '🇨🇭',
  'Geneva',
  'University of Geneva stands out for its rigorous academic standards and internationally recognized degrees. Located in Geneva, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Business Administration, Biology, Data Science.',
  '$1K - $3K/year',
  1097,
  3405,
  7.5,
  'Apr 30, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  87,
  19,
  22699,
  49.4,
  195,
  'http://www.unige.ch',
  'http://www.unige.ch/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'ETHZ - ETH Zurich',
  'Switzerland',
  '🇨🇭',
  'Switzerland',
  'ETHZ - ETH Zurich is one of Switzerland''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries. Popular programs include Business Administration, Data Science, Engineering, Medicine.',
  '$1K - $3K/year',
  1262,
  3475,
  6.5,
  'Apr 30, 2026',
  true,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'high',
  114,
  16,
  7474,
  47.4,
  118,
  'http://www.ethz.ch',
  'http://www.ethz.ch/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'EPFL - EPF Lausanne',
  'Switzerland',
  '🇨🇭',
  'Switzerland',
  'EPFL - EPF Lausanne stands out for its rigorous academic standards and internationally recognized degrees. Located in Switzerland, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Medicine, Psychology, Biology.',
  '$1K - $4K/year',
  1334,
  4289,
  7.5,
  'Dec 15, 2026',
  true,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'high',
  149,
  23,
  10608,
  47.4,
  74,
  'http://www.epfl.ch',
  'http://www.epfl.ch/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'European University',
  'Switzerland',
  '🇨🇭',
  'Switzerland',
  'European University stands out for its rigorous academic standards and internationally recognized degrees. Located in Switzerland, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure. Popular programs include Computer Science, Data Science, Engineering, Medicine.',
  '$1K - $5K/year',
  1182,
  4588,
  6.5,
  'Dec 15, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'high',
  169,
  27,
  18003,
  53.8,
  99,
  'http://www.euruni.edu',
  'http://www.euruni.edu/admissions'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website, admission_url
) VALUES (
  'Victoria University',
  'Switzerland',
  '🇨🇭',
  'Switzerland',
  'Victoria University is a leading research university in Switzerland, Switzerland, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support. Popular programs include Computer Science, Architecture, Artificial Intelligence, Physics.',
  '$1K - $3K/year',
  1083,
  2869,
  6.5,
  'Apr 30, 2026',
  false,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'high',
  198,
  20,
  13975,
  32.2,
  149,
  'http://www.victoria-uni.ch',
  'http://www.victoria-uni.ch/admissions'
);
