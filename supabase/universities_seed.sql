-- ========================================
-- UniSearch University Database Seed
-- Source: Hipolabs Universities API (http://universities.hipolabs.com)
-- Generated: 2026-04-22T19:34:32.612Z
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
  'Yale University is one of United States''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$40K - $58K/year',
  39628,
  57535,
  7,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  16,
  21,
  9645,
  28.1,
  370,
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
  'Located in Durham, NC, Duke University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United States.',
  '$35K - $38K/year',
  35481,
  37908,
  7.5,
  'Feb 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'high',
  57,
  4,
  13691,
  30.7,
  81,
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
  'Cornell University is one of United States''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$45K - $57K/year',
  45107,
  57076,
  7,
  'Feb 1, 2026',
  true,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'high',
  13,
  14,
  40986,
  31.6,
  126,
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
  'Harvard University stands out for its rigorous academic standards and internationally recognized degrees. Located in Cambridge, MA, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$32K - $37K/year',
  31632,
  36955,
  6.5,
  'Feb 15, 2026',
  true,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'high',
  4,
  42,
  44675,
  34.5,
  84,
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
  'Columbia University stands out for its rigorous academic standards and internationally recognized degrees. Located in New York, NY, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$43K - $61K/year',
  42928,
  60849,
  7.5,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  23,
  29,
  38728,
  26.8,
  426,
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
  'With a long tradition of academic excellence, New York University in New York, NY offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$35K - $38K/year',
  35384,
  37738,
  6.5,
  'Feb 1, 2026',
  false,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  38,
  9,
  35391,
  29.3,
  290,
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
  'With a long tradition of academic excellence, Stanford University in Stanford, CA offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$36K - $47K/year',
  36080,
  46738,
  6.5,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  5,
  44,
  27433,
  20.4,
  190,
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
  'Princeton University is a leading research university in Princeton, NJ, United States, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$41K - $58K/year',
  40578,
  57819,
  7,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'high',
  17,
  20,
  48003,
  22.8,
  122,
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
  'University of Chicago is a leading research university in Chicago, IL, United States, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$42K - $45K/year',
  41773,
  45257,
  7,
  'Jan 15, 2026',
  false,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'high',
  11,
  24,
  50731,
  15.9,
  101,
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
  'Northwestern University stands out for its rigorous academic standards and internationally recognized degrees. Located in Evanston, IL, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$29K - $63K/year',
  29397,
  62674,
  7,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'high',
  47,
  30,
  26515,
  19.9,
  133,
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
  'Located in Baltimore, MD, Johns Hopkins University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United States.',
  '$35K - $50K/year',
  35277,
  49607,
  7.5,
  'Feb 1, 2026',
  false,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  28,
  54,
  27821,
  29,
  264,
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
  'University of Washington stands out for its rigorous academic standards and internationally recognized degrees. Located in Seattle, WA, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$35K - $51K/year',
  34549,
  50995,
  6.5,
  'Jan 1, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'medium',
  63,
  47,
  44994,
  20.9,
  439,
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
  'With a long tradition of academic excellence, Carnegie Mellon University in Pittsburgh, PA offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$47K - $62K/year',
  46842,
  61592,
  7,
  'Jan 1, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  52,
  29,
  42924,
  26.4,
  122,
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
  'Located in Philadelphia, PA, University of Pennsylvania combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United States.',
  '$36K - $53K/year',
  36163,
  53246,
  6.5,
  'Jan 1, 2026',
  false,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'medium',
  12,
  13,
  35691,
  23.2,
  267,
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
  'Located in Pasadena, CA, California Institute of Technology combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United States.',
  '$50K - $52K/year',
  49724,
  52312,
  6.5,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'high',
  15,
  7,
  41491,
  30,
  197,
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
  'University of California, Berkeley is one of United States''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$52K - $62K/year',
  51765,
  62079,
  7,
  'Feb 15, 2026',
  true,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'high',
  10,
  40,
  54469,
  38.8,
  109,
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
  'Massachusetts Institute of Technology is a leading research university in Cambridge, MA, United States, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$40K - $56K/year',
  39828,
  55961,
  7,
  'Jan 1, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'high',
  1,
  33,
  44787,
  28.8,
  492,
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
  'With a long tradition of academic excellence, University of California, Los Angeles in Los Angeles, CA offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$35K - $49K/year',
  35492,
  48759,
  7,
  'Jan 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'high',
  29,
  24,
  54406,
  36.5,
  368,
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
  'University of Michigan-Flint is one of United States''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$52K - $62K/year',
  52217,
  62431,
  7.5,
  'Jan 15, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'high',
  33,
  22,
  48199,
  39.9,
  325,
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
  'University of Michigan - Dearborn is a leading research university in United States, United States, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$29K - $46K/year',
  28711,
  45756,
  7.5,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  33,
  25,
  13220,
  20,
  269,
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
  'University of Leeds stands out for its rigorous academic standards and internationally recognized degrees. Located in Leeds, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$18K - $25K/year',
  17977,
  25380,
  6,
  'Mar 31, 2026',
  true,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'high',
  75,
  39,
  34606,
  46.2,
  350,
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
  'University of Oxford is a leading research university in Oxford, United Kingdom, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$16K - $32K/year',
  15560,
  32170,
  6.5,
  'Oct 15, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'high',
  3,
  31,
  10006,
  30.1,
  384,
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
  'Located in Bristol, University of Bristol combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United Kingdom.',
  '$21K - $33K/year',
  20764,
  33484,
  7.5,
  'Jan 31, 2026',
  true,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'high',
  55,
  37,
  16889,
  54.2,
  283,
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
  'University of Glasgow stands out for its rigorous academic standards and internationally recognized degrees. Located in Glasgow, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$24K - $40K/year',
  23928,
  39694,
  7.5,
  'Mar 31, 2026',
  false,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'medium',
  76,
  61,
  29960,
  39.8,
  321,
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
  'University of Warwick is one of United Kingdom''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$16K - $33K/year',
  15919,
  33133,
  6,
  'Jan 15, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'high',
  67,
  43,
  39011,
  57,
  193,
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
  'University of Cambridge is a leading research university in Cambridge, United Kingdom, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$20K - $26K/year',
  20395,
  26156,
  6,
  'Oct 15, 2026',
  true,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'high',
  2,
  53,
  21826,
  58,
  236,
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
  'University of Edinburgh is one of United Kingdom''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$20K - $33K/year',
  19805,
  33217,
  6,
  'Jan 15, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'medium',
  22,
  34,
  13715,
  53.6,
  421,
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
  'Imperial College London is one of United Kingdom''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$21K - $34K/year',
  21043,
  34212,
  7,
  'Mar 31, 2026',
  true,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'medium',
  6,
  63,
  41746,
  53.2,
  289,
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
  'Located in Birmingham, University of Birmingham combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United Kingdom.',
  '$25K - $40K/year',
  24978,
  40238,
  7,
  'Jan 31, 2026',
  false,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'medium',
  84,
  11,
  30757,
  47.4,
  163,
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
  'University of Manchester stands out for its rigorous academic standards and internationally recognized degrees. Located in Manchester, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$16K - $25K/year',
  15520,
  25104,
  6.5,
  'Jan 31, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'high',
  32,
  18,
  32395,
  39.8,
  170,
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
  'University of Nottingham stands out for its rigorous academic standards and internationally recognized degrees. Located in Nottingham, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$22K - $38K/year',
  21607,
  38478,
  6.5,
  'Oct 15, 2026',
  false,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'high',
  100,
  52,
  38626,
  30.8,
  238,
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
  'The University of Sheffield is a leading research university in United Kingdom, United Kingdom, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$21K - $28K/year',
  20594,
  27689,
  6,
  'Oct 15, 2026',
  true,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'medium',
  104,
  63,
  27390,
  54.6,
  298,
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
  'Located in United Kingdom, King''s College London, University of London combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United Kingdom.',
  '$17K - $28K/year',
  17115,
  27933,
  7,
  'Jan 31, 2026',
  true,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'medium',
  40,
  62,
  32206,
  33.1,
  140,
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
  'University College London, University of London is a leading research university in United Kingdom, United Kingdom, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$24K - $38K/year',
  24206,
  37728,
  7.5,
  'Oct 15, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'high',
  9,
  19,
  36328,
  37.3,
  288,
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
  'Located in United Kingdom, London School of Economics and Political Science, University of London combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of United Kingdom.',
  '$19K - $27K/year',
  18800,
  26668,
  7,
  'Oct 15, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'high',
  45,
  14,
  22725,
  30.9,
  394,
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
  'McGill University is one of Canada''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$20K - $36K/year',
  19712,
  36183,
  6,
  'Jan 15, 2026',
  true,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'high',
  30,
  66,
  82047,
  26.9,
  369,
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
  'Queen''s University is a leading research university in Kingston, ON, Canada, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$15K - $25K/year',
  15358,
  25269,
  7,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  227,
  35,
  32720,
  17.1,
  417,
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
  'McMaster University is one of Canada''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$23K - $27K/year',
  23070,
  26733,
  6,
  'Feb 1, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  261,
  47,
  47518,
  30.9,
  433,
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
  'With a long tradition of academic excellence, Dalhousie University in Halifax, NS offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$16K - $37K/year',
  16266,
  36837,
  6,
  'Apr 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  283,
  43,
  45355,
  23.1,
  592,
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
  'With a long tradition of academic excellence, University of Ottawa in Ottawa, ON offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$18K - $33K/year',
  18498,
  33454,
  6.5,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'high',
  203,
  68,
  51565,
  28,
  333,
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
  'University of Alberta is a leading research university in Edmonton, AB, Canada, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$18K - $31K/year',
  17612,
  30602,
  6.5,
  'Jan 15, 2026',
  true,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  111,
  47,
  37860,
  19.8,
  585,
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
  'University of Calgary is a leading research university in Calgary, AB, Canada, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$21K - $27K/year',
  20502,
  26779,
  7,
  'Apr 1, 2026',
  true,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'medium',
  182,
  69,
  46090,
  29,
  432,
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
  'University of Toronto is a leading research university in Toronto, ON, Canada, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$20K - $27K/year',
  19947,
  26876,
  6.5,
  'Feb 1, 2026',
  false,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  21,
  61,
  41064,
  30.4,
  660,
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
  'University of Waterloo is one of Canada''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$23K - $29K/year',
  22979,
  29439,
  6,
  'Jan 15, 2026',
  false,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'medium',
  112,
  41,
  75962,
  31.4,
  328,
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
  'Simon Fraser University stands out for its rigorous academic standards and internationally recognized degrees. Located in Burnaby, BC, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$16K - $28K/year',
  15992,
  28095,
  6,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'high',
  318,
  50,
  85152,
  31.2,
  326,
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
  'With a long tradition of academic excellence, University of British Columbia in Vancouver, BC offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$16K - $33K/year',
  15919,
  33266,
  7,
  'Feb 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'high',
  34,
  42,
  19663,
  33.8,
  367,
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
  'Located in Canada, Trinity Western University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Canada.',
  '$24K - $32K/year',
  24303,
  32329,
  6.5,
  'Feb 1, 2026',
  true,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'medium',
  114,
  41,
  31303,
  27.5,
  567,
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
  'Curtin University stands out for its rigorous academic standards and internationally recognized degrees. Located in Perth, WA, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$21K - $37K/year',
  20580,
  36981,
  6.5,
  'Oct 31, 2026',
  false,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'medium',
  183,
  64,
  41292,
  45.3,
  147,
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
  'Monash University is one of Australia''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$29K - $46K/year',
  29196,
  45609,
  6,
  'Jul 31, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'high',
  42,
  74,
  17747,
  38.9,
  169,
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
  'Macquarie University stands out for its rigorous academic standards and internationally recognized degrees. Located in Sydney, NSW, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$34K - $46K/year',
  34108,
  45964,
  6.5,
  'Jan 31, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  130,
  66,
  45596,
  33.5,
  371,
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
  'Located in Sydney, NSW, University of Sydney combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Australia.',
  '$23K - $38K/year',
  23443,
  38383,
  6.5,
  'May 31, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'high',
  19,
  38,
  12583,
  33.8,
  122,
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
  'University of Adelaide stands out for its rigorous academic standards and internationally recognized degrees. Located in Adelaide, SA, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$22K - $47K/year',
  22087,
  46593,
  6.5,
  'Jul 31, 2026',
  true,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'high',
  89,
  62,
  20324,
  48.7,
  242,
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
  'University of Melbourne is one of Australia''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$26K - $46K/year',
  25890,
  46057,
  6.5,
  'Mar 31, 2026',
  false,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'medium',
  14,
  30,
  10465,
  28.9,
  390,
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
  'University of Wollongong is a leading research university in Wollongong, NSW, Australia, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$31K - $40K/year',
  30509,
  39854,
  7,
  'Jul 31, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'high',
  162,
  65,
  53817,
  27.2,
  254,
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
  'With a long tradition of academic excellence, University of Queensland in Brisbane, QLD offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$25K - $41K/year',
  25196,
  41201,
  6,
  'Jan 31, 2026',
  false,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  43,
  45,
  42580,
  32.7,
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
  'University of New South Wales is one of Australia''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$26K - $40K/year',
  25599,
  39911,
  6.5,
  'Oct 31, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'low',
  19,
  41,
  51649,
  35.3,
  122,
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
  'Australian National University stands out for its rigorous academic standards and internationally recognized degrees. Located in Canberra, ACT, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$23K - $35K/year',
  22947,
  35216,
  7,
  'Jan 31, 2026',
  true,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'high',
  433,
  68,
  13837,
  45.6,
  406,
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
  'University of Western Australia is a leading research university in Perth, WA, Australia, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$32K - $43K/year',
  32070,
  43476,
  7,
  'Oct 31, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  72,
  70,
  28884,
  40.2,
  122,
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
  'With a long tradition of academic excellence, Bond University in Australia offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$21K - $39K/year',
  21330,
  39002,
  6.5,
  'Jan 31, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'high',
  486,
  41,
  39714,
  33.1,
  112,
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
  'Jacobs University Bremen is a leading research university in Germany, Germany, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$0K - $2K/year',
  462,
  1577,
  6.5,
  'Jul 15, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  162,
  18,
  16978,
  33.7,
  162,
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
  'SRH University of Applied Sciences stands out for its rigorous academic standards and internationally recognized degrees. Located in Germany, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$0K - $2K/year',
  99,
  1619,
  6,
  'Jan 15, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'high',
  177,
  10,
  21847,
  17.2,
  118,
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
  'With a long tradition of academic excellence, International University in Germany in Germany offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$0K - $2K/year',
  266,
  2218,
  6,
  'Apr 15, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'low',
  206,
  34,
  25749,
  22.2,
  76,
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
  'Karlshochschule International University is a leading research university in Germany, Germany, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$0K - $2K/year',
  247,
  2388,
  6.5,
  'Apr 15, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  225,
  33,
  34418,
  29.3,
  296,
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
  'Rosenheim University of Applied Sciences is one of Germany''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$0K - $2K/year',
  493,
  1835,
  6.5,
  'Apr 15, 2026',
  false,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'high',
  252,
  17,
  30312,
  20.8,
  65,
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
  'CODE University of Applied Sciences Berlin stands out for its rigorous academic standards and internationally recognized degrees. Located in Germany, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$0K - $2K/year',
  433,
  2478,
  6.5,
  'Jan 15, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  289,
  17,
  23485,
  16.7,
  287,
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
  'Westphalian University of Applied Sciences is a leading research university in Germany, Germany, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$0K - $3K/year',
  358,
  3496,
  6,
  'Jul 15, 2026',
  false,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  307,
  24,
  29067,
  14.1,
  68,
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
  'Located in Germany, Schiller International University, Heidelberg combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Germany.',
  '$0K - $4K/year',
  198,
  3851,
  6,
  'May 15, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  332,
  30,
  18033,
  21.1,
  101,
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
  'Technical University of Applied Sciences Augsburg is one of Germany''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$0K - $3K/year',
  386,
  2593,
  6,
  'May 15, 2026',
  false,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'medium',
  363,
  6,
  26573,
  22.8,
  247,
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
  'Hamburg University of Applied Sciences (HAW Hamburg) is one of Germany''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$0K - $3K/year',
  406,
  3475,
  6.5,
  'Jan 15, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  381,
  20,
  45232,
  19.7,
  111,
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
  'With a long tradition of academic excellence, Hochschule Mittweida, University of Applied Sciences in Germany offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$0K - $3K/year',
  491,
  3134,
  6.5,
  'Jul 15, 2026',
  false,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'medium',
  401,
  16,
  37175,
  18.4,
  127,
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
  'International School of New Media, University of Lübeck is a leading research university in Germany, Germany, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$0K - $2K/year',
  307,
  1652,
  6.5,
  'Apr 15, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'low',
  438,
  11,
  41196,
  21.6,
  89,
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
  'Located in Utrecht, Utrecht University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Netherlands.',
  '$8K - $16K/year',
  8155,
  15958,
  7,
  'May 1, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  107,
  41,
  35054,
  29.1,
  207,
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
  'University of Groningen is one of Netherlands''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$12K - $20K/year',
  11672,
  19907,
  6,
  'May 1, 2026',
  true,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'medium',
  139,
  51,
  26757,
  37.6,
  182,
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
  'Located in Amsterdam, University of Amsterdam combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Netherlands.',
  '$10K - $19K/year',
  10384,
  19163,
  7,
  'Feb 1, 2026',
  false,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  53,
  42,
  38554,
  34.8,
  126,
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
  'With a long tradition of academic excellence, Erasmus University Rotterdam in Rotterdam offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$9K - $19K/year',
  9111,
  18903,
  6,
  'Feb 1, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'medium',
  176,
  29,
  30702,
  21.6,
  79,
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
  'Vrije Universiteit Amsterdam is one of Netherlands''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$10K - $16K/year',
  10179,
  15601,
  7,
  'Apr 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  207,
  49,
  11404,
  23.1,
  116,
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
  'Delft University of Technology stands out for its rigorous academic standards and internationally recognized degrees. Located in Delft, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$9K - $18K/year',
  8543,
  17954,
  6,
  'May 1, 2026',
  true,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'medium',
  47,
  24,
  35848,
  31.2,
  86,
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
  'Eindhoven University of Technology is one of Netherlands''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$9K - $20K/year',
  8725,
  19779,
  6,
  'Jan 15, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  124,
  22,
  10013,
  31.8,
  233,
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
  'Zuyd University stands out for its rigorous academic standards and internationally recognized degrees. Located in Netherlands, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$11K - $19K/year',
  10651,
  18921,
  7,
  'Jan 15, 2026',
  true,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'medium',
  436,
  21,
  17233,
  15.2,
  177,
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
  'École Polytechnique stands out for its rigorous academic standards and internationally recognized degrees. Located in Palaiseau, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$8K - $18K/year',
  7809,
  17749,
  6.5,
  'Mar 31, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  38,
  16,
  39820,
  24.7,
  186,
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
  'Université Paris-Saclay stands out for its rigorous academic standards and internationally recognized degrees. Located in Paris, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$6K - $11K/year',
  6111,
  10924,
  6,
  'Apr 30, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  71,
  34,
  24636,
  19.3,
  309,
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
  'American University of Paris is one of France''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$6K - $14K/year',
  5685,
  14084,
  6.5,
  'Jan 10, 2026',
  true,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'high',
  236,
  42,
  51199,
  28.4,
  268,
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
  'With a long tradition of academic excellence, Institut d''Etudes Politiques de Paris (Sciences Po) in France offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$5K - $15K/year',
  4882,
  14578,
  6.5,
  'Mar 31, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  250,
  23,
  40728,
  13.5,
  186,
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
  'University of Burgundy stands out for its rigorous academic standards and internationally recognized degrees. Located in France, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$6K - $14K/year',
  5720,
  13697,
  6,
  'Jan 10, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'high',
  400,
  15,
  37571,
  28.7,
  143,
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
  'Located in France, Schiller International University, Paris combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of France.',
  '$6K - $11K/year',
  6492,
  11130,
  6,
  'Jan 10, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  428,
  21,
  45505,
  29.3,
  316,
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
  'Schiller International University, Strasbourg is a leading research university in France, France, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$4K - $17K/year',
  4040,
  16513,
  6,
  'Feb 28, 2026',
  false,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'medium',
  455,
  23,
  41499,
  20.9,
  118,
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
  'Institute Français de la Mode is one of France''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$4K - $17K/year',
  3884,
  16625,
  6.5,
  'Mar 31, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  477,
  11,
  33662,
  27.9,
  221,
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
  'Ege University is a leading research university in Izmir, Turkey, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$5K - $8K/year',
  5160,
  8302,
  6,
  'Jan 31, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  505,
  27,
  58412,
  5.6,
  126,
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
  'Ankara University stands out for its rigorous academic standards and internationally recognized degrees. Located in Ankara, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$6K - $11K/year',
  5590,
  11199,
  6,
  'Jan 31, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  534,
  51,
  53711,
  11.2,
  182,
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
  'With a long tradition of academic excellence, Bilkent University in Ankara offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$3K - $10K/year',
  3227,
  9891,
  5.5,
  'Apr 30, 2026',
  false,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'high',
  556,
  27,
  25887,
  15.6,
  47,
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
  'Marmara University stands out for its rigorous academic standards and internationally recognized degrees. Located in Istanbul, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$5K - $10K/year',
  4686,
  10459,
  5.5,
  'Apr 30, 2026',
  false,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'high',
  575,
  25,
  39558,
  11.5,
  160,
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
  'Sabanci University stands out for its rigorous academic standards and internationally recognized degrees. Located in Istanbul, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$5K - $10K/year',
  5048,
  9620,
  6,
  'Mar 15, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'medium',
  611,
  69,
  49461,
  13.4,
  156,
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
  'With a long tradition of academic excellence, Istanbul University in Istanbul offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$5K - $10K/year',
  5353,
  9962,
  6,
  'Jan 31, 2026',
  false,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  629,
  46,
  35176,
  6.1,
  247,
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
  'Located in Ankara, Hacettepe University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Turkey.',
  '$3K - $11K/year',
  3177,
  11391,
  6.5,
  'Jan 31, 2026',
  true,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'medium',
  658,
  46,
  9184,
  11.6,
  145,
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
  'Located in Istanbul, Istanbul Technical University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Turkey.',
  '$4K - $8K/year',
  3899,
  7783,
  6,
  'Mar 15, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  684,
  49,
  48006,
  19.5,
  176,
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
  'Located in Izmir, Izmir Institute of Technology combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Turkey.',
  '$5K - $10K/year',
  4938,
  9701,
  5.5,
  'Feb 28, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'high',
  712,
  24,
  39176,
  15.4,
  169,
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
  'Located in Ankara, Middle East Technical University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Turkey.',
  '$4K - $8K/year',
  4066,
  8284,
  5.5,
  'Apr 30, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  726,
  40,
  36275,
  13.3,
  159,
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
  'Located in Turkey, Cag University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Turkey.',
  '$4K - $12K/year',
  4271,
  11977,
  6,
  'Apr 30, 2026',
  false,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  758,
  46,
  33103,
  7,
  165,
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
  'With a long tradition of academic excellence, Koç University in Turkey offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$3K - $9K/year',
  3320,
  8720,
  5.5,
  'Mar 15, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  783,
  67,
  51722,
  7,
  51,
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
  'MEF University stands out for its rigorous academic standards and internationally recognized degrees. Located in Turkey, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$5K - $9K/year',
  5194,
  8826,
  6.5,
  'Jan 31, 2026',
  true,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'high',
  811,
  37,
  10152,
  15,
  90,
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
  'TED University stands out for its rigorous academic standards and internationally recognized degrees. Located in Turkey, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$5K - $9K/year',
  5099,
  9402,
  5.5,
  'Feb 28, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  830,
  54,
  20221,
  18.1,
  198,
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
  'Isik University is a leading research university in Turkey, Turkey, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$4K - $10K/year',
  3639,
  9790,
  6.5,
  'Apr 30, 2026',
  true,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'medium',
  856,
  54,
  54784,
  11.2,
  96,
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
  'Singapore Management University stands out for its rigorous academic standards and internationally recognized degrees. Located in Singapore, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$18K - $26K/year',
  18487,
  25995,
  6.5,
  'Apr 30, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  54,
  11,
  14753,
  35,
  172,
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
  'Located in Singapore, Nanyang Technological University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Singapore.',
  '$20K - $33K/year',
  20104,
  33483,
  6.5,
  'Feb 28, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  84,
  9,
  13027,
  48.4,
  176,
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
  'National University of Singapore is one of Singapore''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$18K - $28K/year',
  17738,
  27805,
  7,
  'Mar 31, 2026',
  true,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'medium',
  8,
  5,
  20634,
  28.7,
  129,
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
  'With a long tradition of academic excellence, University of the Arts Singapore in Singapore offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$17K - $25K/year',
  17158,
  25411,
  7,
  'Feb 28, 2026',
  false,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  135,
  9,
  26859,
  40.6,
  179,
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
  'Located in Singapore, Singapore University of Social Sciences combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Singapore.',
  '$20K - $32K/year',
  19626,
  32336,
  6.5,
  'Mar 31, 2026',
  false,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'medium',
  163,
  23,
  29388,
  46.3,
  252,
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
  'Located in Singapore, Singapore University of Technology and Design combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Singapore.',
  '$17K - $32K/year',
  16558,
  32133,
  6.5,
  'Feb 28, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  183,
  8,
  29911,
  36.4,
  104,
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
  'Located in Tokyo, Keio University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Japan.',
  '$7K - $10K/year',
  6954,
  10103,
  6,
  'Jan 31, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'low',
  103,
  52,
  33274,
  12.7,
  243,
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
  'Kobe University stands out for its rigorous academic standards and internationally recognized degrees. Located in Kobe, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$7K - $15K/year',
  6795,
  14811,
  6,
  'Jun 30, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'low',
  133,
  49,
  5651,
  17.1,
  201,
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
  'Kyoto University is a leading research university in Kyoto, Japan, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$7K - $12K/year',
  7454,
  11858,
  5.5,
  'Feb 28, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'low',
  157,
  63,
  28333,
  5.8,
  66,
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
  'Osaka University stands out for its rigorous academic standards and internationally recognized degrees. Located in Osaka, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$8K - $15K/year',
  7933,
  14965,
  6.5,
  'Dec 1, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'low',
  182,
  40,
  54652,
  13.8,
  240,
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
  'Kyushu University stands out for its rigorous academic standards and internationally recognized degrees. Located in Fukuoka, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$7K - $14K/year',
  7155,
  14162,
  5.5,
  'Jun 30, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'low',
  212,
  43,
  17364,
  13.6,
  195,
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
  'Nagoya University stands out for its rigorous academic standards and internationally recognized degrees. Located in Nagoya, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$8K - $13K/year',
  7731,
  12876,
  6.5,
  'Dec 1, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  235,
  37,
  11548,
  22.6,
  203,
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
  'Tohoku University stands out for its rigorous academic standards and internationally recognized degrees. Located in Sendai, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$6K - $11K/year',
  6351,
  11263,
  6.5,
  'Dec 1, 2026',
  true,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'high',
  264,
  34,
  28333,
  21.3,
  94,
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
  'Located in Tokyo, Waseda University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Japan.',
  '$6K - $12K/year',
  6398,
  12181,
  6,
  'Feb 28, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'high',
  281,
  30,
  32925,
  7.9,
  88,
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
  'Hokkaido University is a leading research university in Sapporo, Japan, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$6K - $13K/year',
  6232,
  12963,
  6,
  'Jun 30, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'low',
  300,
  51,
  12775,
  17.3,
  269,
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
  'Located in Tokyo, University of Tokyo combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Japan.',
  '$5K - $14K/year',
  5206,
  14281,
  6,
  'Dec 1, 2026',
  true,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'high',
  338,
  43,
  16870,
  19.4,
  113,
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
  'Hiroshima University is one of Japan''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$7K - $15K/year',
  7073,
  14841,
  6,
  'Jan 31, 2026',
  true,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'high',
  364,
  30,
  41954,
  9.7,
  70,
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
  'Osaka University of Arts stands out for its rigorous academic standards and internationally recognized degrees. Located in Japan, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$6K - $14K/year',
  6303,
  14254,
  6,
  'Jun 30, 2026',
  true,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'high',
  379,
  42,
  5984,
  23.8,
  235,
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
  'Seoul National University is a leading research university in Seoul, South Korea, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$7K - $13K/year',
  7213,
  13105,
  6,
  'Feb 28, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'high',
  157,
  20,
  25679,
  13.2,
  158,
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
  'Korea Advanced Institute of Science and Technology is a leading research university in South Korea, South Korea, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$6K - $12K/year',
  6317,
  11591,
  6.5,
  'Mar 15, 2026',
  false,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'high',
  180,
  56,
  11805,
  7,
  195,
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
  'Yonsei University is one of South Korea''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$6K - $14K/year',
  5851,
  14317,
  5.5,
  'Sep 15, 2026',
  false,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'medium',
  201,
  45,
  36766,
  17.8,
  84,
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
  'Korea University stands out for its rigorous academic standards and internationally recognized degrees. Located in Seoul, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$8K - $13K/year',
  7617,
  12653,
  6.5,
  'Sep 15, 2026',
  false,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'medium',
  236,
  54,
  30328,
  9,
  197,
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
  'Sungkyunkwan University is one of South Korea''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$8K - $13K/year',
  7737,
  13337,
  5.5,
  'Mar 15, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  263,
  49,
  35903,
  14.4,
  157,
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
  'Hanyang University is a leading research university in Seoul, South Korea, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$7K - $14K/year',
  6959,
  14426,
  6.5,
  'Oct 31, 2026',
  false,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  278,
  21,
  29906,
  15.4,
  232,
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
  'Pohang University of Science and Technology stands out for its rigorous academic standards and internationally recognized degrees. Located in Pohang, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$7K - $14K/year',
  7083,
  13890,
  6,
  'Oct 31, 2026',
  false,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'low',
  300,
  37,
  18523,
  6.7,
  56,
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
  'Sogang University is one of South Korea''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$5K - $14K/year',
  5378,
  13872,
  6,
  'Feb 28, 2026',
  true,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  331,
  57,
  31971,
  15.1,
  54,
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
  'With a long tradition of academic excellence, Ewha Womans University in South Korea offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$6K - $11K/year',
  5780,
  10955,
  5.5,
  'Feb 28, 2026',
  true,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'high',
  350,
  37,
  37687,
  6.9,
  65,
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
  'With a long tradition of academic excellence, Pusan National University in South Korea offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$8K - $12K/year',
  7658,
  11601,
  6.5,
  'Mar 15, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  378,
  46,
  36167,
  17.4,
  66,
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
  'Located in South Korea, Kyung Hee University combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of South Korea.',
  '$8K - $11K/year',
  7856,
  10508,
  6.5,
  'Mar 15, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  401,
  48,
  21041,
  16.8,
  110,
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
  'Chung-Ang University stands out for its rigorous academic standards and internationally recognized degrees. Located in South Korea, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$6K - $14K/year',
  6150,
  14305,
  6.5,
  'Oct 31, 2026',
  true,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'medium',
  437,
  30,
  39056,
  14.1,
  66,
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
  'With a long tradition of academic excellence, Universiti Malaya in Kuala Lumpur offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$7K - $9K/year',
  6982,
  9433,
  5.5,
  'Aug 31, 2026',
  true,
  'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?w=600&h=400&fit=crop&q=80',
  'medium',
  210,
  41,
  39890,
  25.7,
  61,
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
  'Universiti Putra Malaysia stands out for its rigorous academic standards and internationally recognized degrees. Located in Serdang, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$6K - $10K/year',
  5650,
  9530,
  5.5,
  'Oct 31, 2026',
  false,
  'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=600&h=400&fit=crop&q=80',
  'medium',
  238,
  55,
  33488,
  28.7,
  90,
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
  'Universiti Sains Malaysia stands out for its rigorous academic standards and internationally recognized degrees. Located in Penang, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$6K - $10K/year',
  6469,
  10279,
  6.5,
  'Mar 31, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'high',
  264,
  51,
  22905,
  18,
  125,
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
  'Located in Johor Bahru, Universiti Teknologi Malaysia combines academic excellence with cutting-edge research facilities. Students benefit from strong industry connections and a vibrant campus life in the heart of Malaysia.',
  '$7K - $8K/year',
  6750,
  8295,
  6,
  'Mar 31, 2026',
  true,
  'https://images.unsplash.com/photo-1509439581779-6298f75bf6e5?w=600&h=400&fit=crop&q=80',
  'high',
  288,
  79,
  31653,
  23.5,
  168,
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
  'Universiti Kebangsaan Malaysia stands out for its rigorous academic standards and internationally recognized degrees. Located in Bangi, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$5K - $9K/year',
  5285,
  9097,
  6.5,
  'May 31, 2026',
  true,
  'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=600&h=400&fit=crop&q=80',
  'medium',
  305,
  61,
  35844,
  18.5,
  108,
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
  'UCSI University is a leading research university in Malaysia, Malaysia, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$5K - $11K/year',
  5192,
  10502,
  6.5,
  'May 31, 2026',
  true,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'medium',
  332,
  58,
  10124,
  17.1,
  195,
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
  'With a long tradition of academic excellence, Aimst University in Malaysia offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$4K - $10K/year',
  4231,
  9839,
  5.5,
  'Oct 31, 2026',
  false,
  'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=600&h=400&fit=crop&q=80',
  'medium',
  357,
  77,
  25531,
  25.5,
  124,
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
  'Asia E University stands out for its rigorous academic standards and internationally recognized degrees. Located in Malaysia, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$7K - $8K/year',
  6608,
  8201,
  6,
  'Oct 31, 2026',
  false,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'high',
  380,
  77,
  30041,
  10.9,
  104,
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
  'With a long tradition of academic excellence, University of Basel in Basel offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$2K - $3K/year',
  1853,
  3342,
  6.5,
  'Apr 30, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=600&h=400&fit=crop&q=80',
  'medium',
  68,
  14,
  19077,
  54.1,
  184,
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
  'University of Geneva stands out for its rigorous academic standards and internationally recognized degrees. Located in Geneva, it provides a welcoming environment for international students alongside state-of-the-art research infrastructure.',
  '$1K - $3K/year',
  1007,
  2711,
  7.5,
  'Dec 15, 2026',
  false,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'medium',
  99,
  20,
  13750,
  33.4,
  182,
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
  'With a long tradition of academic excellence, ETHZ - ETH Zurich in Switzerland offers world-class education and research opportunities. The university is committed to fostering international talent and cross-cultural collaboration.',
  '$2K - $4K/year',
  1881,
  3777,
  7,
  'Apr 30, 2026',
  false,
  'https://images.unsplash.com/photo-1541339907198-e08756dedf3f?w=600&h=400&fit=crop&q=80',
  'high',
  116,
  21,
  19394,
  54.3,
  132,
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
  'EPFL - EPF Lausanne is a leading research university in Switzerland, Switzerland, offering a wide range of programs across science, engineering, business, and the humanities. Known for its diverse international community and excellent academic support.',
  '$1K - $4K/year',
  1298,
  4390,
  7.5,
  'Dec 15, 2026',
  true,
  'https://images.unsplash.com/photo-1569389397653-c04fe624e663?w=600&h=400&fit=crop&q=80',
  'medium',
  144,
  24,
  22657,
  31.1,
  161,
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
  'European University is one of Switzerland''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$2K - $3K/year',
  1843,
  2968,
  6.5,
  'Dec 1, 2026',
  true,
  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600&h=400&fit=crop&q=80',
  'high',
  173,
  9,
  15965,
  54.9,
  153,
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
  'Victoria University is one of Switzerland''s most prestigious institutions, with a strong focus on innovation and global engagement. Its programs are recognized worldwide, attracting students from over 100 countries.',
  '$2K - $2K/year',
  1651,
  2203,
  7.5,
  'Apr 30, 2026',
  true,
  'https://images.unsplash.com/photo-1564981797816-1043664bf78d?w=600&h=400&fit=crop&q=80',
  'high',
  191,
  8,
  13721,
  51.3,
  90,
  'http://www.victoria-uni.ch',
  'http://www.victoria-uni.ch/admissions'
);
