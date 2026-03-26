-- ========================================
-- UniSearch University Database Seed
-- Generated: 2026-03-26T05:45:02.625Z
-- Total: 346 universities
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
  international_students_pct, programs_offered, website
) VALUES (
  'Osaka University of Commerce',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Founded in Japan, Osaka University of Commerce has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$8K - $11K/year',
  7443,
  13543,
  6.2,
  'Jan 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  20,
  60,
  8145,
  16.3,
  154,
  'http://www.daishodai.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Hiroshima University',
  'Japan',
  '🇯🇵',
  'Hiroshima',
  'Founded in Japan, Hiroshima University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$9K - $12K/year',
  5461,
  14113,
  6.2,
  'Jan 12, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  29,
  47,
  51383,
  6,
  265,
  'http://www.hiroshima-u.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Hokkaido University of Education',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Hokkaido University of Education is a prestigious institution in Japan known for academic excellence and research innovation. Located in Tokyo, it offers a vibrant campus life and world-class facilities for international students.',
  '$11K - $15K/year',
  8758,
  14970,
  6.3,
  'Jan 19, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  28,
  47,
  45119,
  21.5,
  71,
  'http://www.hokkyodai.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Hokkaido University',
  'Japan',
  '🇯🇵',
  'Sapporo',
  'Hokkaido University is a prestigious institution in Japan known for academic excellence and research innovation. Located in Sapporo, it offers a vibrant campus life and world-class facilities for international students.',
  '$10K - $13K/year',
  8824,
  13225,
  6.1,
  'Jan 18, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  89,
  55,
  56310,
  10.6,
  94,
  'http://www.hokudai.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Hokkaido University of Health Sciences',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Hokkaido University of Health Sciences is a prestigious institution in Japan known for academic excellence and research innovation. Located in Tokyo, it offers a vibrant campus life and world-class facilities for international students.',
  '$9K - $10K/year',
  8700,
  10443,
  6.3,
  'Jan 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  66,
  42,
  12334,
  28.7,
  240,
  'http://www.hoku-iryo-u.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Hiroshima University of Economics',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Hiroshima University of Economics is a prestigious institution in Japan known for academic excellence and research innovation. Located in Tokyo, it offers a vibrant campus life and world-class facilities for international students.',
  '$6K - $9K/year',
  5478,
  10965,
  5.9,
  'Jan 4, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  83,
  51,
  50427,
  9.9,
  271,
  'http://www.hue.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Osaka University of Economics & Law',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Osaka University of Economics & Law in Tokyo, Japan is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$7K - $9K/year',
  5224,
  10406,
  5.7,
  'Jan 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  121,
  53,
  22629,
  31.2,
  239,
  'http://www.keiho-u.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Keio University',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Keio University is a prestigious institution in Japan known for academic excellence and research innovation. Located in Tokyo, it offers a vibrant campus life and world-class facilities for international students.',
  '$9K - $9K/year',
  7555,
  11082,
  5.8,
  'Jan 14, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  145,
  32,
  30056,
  26.1,
  243,
  'http://www.keio.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Kobe University',
  'Japan',
  '🇯🇵',
  'Kobe',
  'Kobe University is a prestigious institution in Japan known for academic excellence and research innovation. Located in Kobe, it offers a vibrant campus life and world-class facilities for international students.',
  '$10K - $10K/year',
  9837,
  10192,
  5.5,
  'Jan 21, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  168,
  30,
  25325,
  25.3,
  249,
  'http://www.kobe-u.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Korea University',
  'Japan',
  '🇯🇵',
  'Seoul',
  'Korea University is a prestigious institution in Japan known for academic excellence and research innovation. Located in Seoul, it offers a vibrant campus life and world-class facilities for international students.',
  '$6K - $12K/year',
  6027,
  11995,
  6,
  'Jan 24, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  193,
  53,
  14991,
  20.8,
  224,
  'http://www.korea-u.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Kobe University of Mercantile Marine',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Kobe University of Mercantile Marine in Tokyo, Japan is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$8K - $13K/year',
  6636,
  12860,
  6.3,
  'Jan 17, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  163,
  42,
  45675,
  9.6,
  293,
  'http://www.kshosen.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Kyoto University of Foreign Studies',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Kyoto University of Foreign Studies is a prestigious institution in Japan known for academic excellence and research innovation. Located in Tokyo, it offers a vibrant campus life and world-class facilities for international students.',
  '$10K - $10K/year',
  9703,
  10585,
  6.3,
  'Jan 26, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  203,
  60,
  45810,
  28.7,
  133,
  'http://www.kufs.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Kyoto University of Education',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Founded in Japan, Kyoto University of Education has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$7K - $10K/year',
  6415,
  12415,
  5.9,
  'Jan 17, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  187,
  41,
  35660,
  20.3,
  219,
  'http://www.kyokyo-u.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Kyoto University of Art and Design',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Founded in Japan, Kyoto University of Art and Design has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$8K - $11K/year',
  8099,
  12270,
  6.2,
  'Jan 9, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  246,
  38,
  40738,
  30.5,
  256,
  'http://www.kyoto-art.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Kyoto University',
  'Japan',
  '🇯🇵',
  'Kyoto',
  'Founded in Japan, Kyoto University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$9K - $12K/year',
  5617,
  12677,
  5.8,
  'Jan 4, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  214,
  52,
  56864,
  33.4,
  123,
  'http://www.kyoto-u.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Kyushu University of Nursing and SocialWelfare',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Kyushu University of Nursing and SocialWelfare in Tokyo, Japan is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$9K - $11K/year',
  7399,
  12382,
  5.9,
  'Jan 14, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  259,
  40,
  21578,
  19.2,
  73,
  'http://www.kyushu-ns.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Kyushu University',
  'Japan',
  '🇯🇵',
  'Fukuoka',
  'Founded in Japan, Kyushu University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $9K/year',
  5246,
  11808,
  6,
  'Jan 21, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  266,
  46,
  59754,
  9.3,
  295,
  'http://www.kyushu-u.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nagoya University',
  'Japan',
  '🇯🇵',
  'Nagoya',
  'Nagoya University is a prestigious institution in Japan known for academic excellence and research innovation. Located in Nagoya, it offers a vibrant campus life and world-class facilities for international students.',
  '$11K - $13K/year',
  9622,
  13077,
  5.9,
  'Jan 22, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  291,
  48,
  37439,
  16.5,
  270,
  'http://www.nagoya-u.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nagoya University of Arts',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Nagoya University of Arts is a prestigious institution in Japan known for academic excellence and research innovation. Located in Tokyo, it offers a vibrant campus life and world-class facilities for international students.',
  '$6K - $11K/year',
  5207,
  10877,
  5.9,
  'Jan 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  293,
  74,
  51077,
  33.2,
  98,
  'http://www.nua.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nagoya University of Commerce and Business Administration',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Founded in Japan, Nagoya University of Commerce and Business Administration has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $9K/year',
  5549,
  10536,
  6,
  'Jan 7, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  304,
  37,
  32329,
  25.3,
  86,
  'http://www.nucba.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nagoya University of Foreign Studies',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Founded in Japan, Nagoya University of Foreign Studies has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$9K - $11K/year',
  8238,
  12883,
  6,
  'Jan 27, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  329,
  34,
  5089,
  18.2,
  167,
  'http://www.nufs.nakanishi.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Osaka University of Foreign Studies',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Osaka University of Foreign Studies is a prestigious institution in Japan known for academic excellence and research innovation. Located in Tokyo, it offers a vibrant campus life and world-class facilities for international students.',
  '$12K - $12K/year',
  9987,
  13457,
  6,
  'Jan 13, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  373,
  72,
  15968,
  28.6,
  204,
  'http://www.osaka-gaidai.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Osaka University of Arts',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Osaka University of Arts is a prestigious institution in Japan known for academic excellence and research innovation. Located in Tokyo, it offers a vibrant campus life and world-class facilities for international students.',
  '$11K - $11K/year',
  9076,
  12358,
  6.1,
  'Jan 3, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  388,
  32,
  9832,
  11.3,
  157,
  'http://www.osaka-geidai.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Osaka University of Education',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Osaka University of Education in Tokyo, Japan is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$6K - $11K/year',
  5854,
  13893,
  6.2,
  'Jan 17, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  378,
  51,
  9444,
  14.6,
  89,
  'http://www.osaka-kyoiku.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Osaka University',
  'Japan',
  '🇯🇵',
  'Osaka',
  'Osaka University is a prestigious institution in Japan known for academic excellence and research innovation. Located in Osaka, it offers a vibrant campus life and world-class facilities for international students.',
  '$9K - $11K/year',
  8477,
  11524,
  6,
  'Jan 17, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  389,
  37,
  56918,
  28.8,
  56,
  'http://www.osaka-u.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Osaka University of Economics',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Osaka University of Economics in Tokyo, Japan is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$9K - $10K/year',
  8722,
  10439,
  6.2,
  'Jan 3, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  401,
  65,
  18998,
  19.4,
  271,
  'http://www.osaka-ue.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Osaka University of Health and Sport Sciences',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Founded in Japan, Osaka University of Health and Sport Sciences has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$9K - $10K/year',
  8764,
  10508,
  6,
  'Jan 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  461,
  60,
  56536,
  5.4,
  169,
  'http://www.ouhs.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Osaka University of Pharmaceutical Sciences',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Osaka University of Pharmaceutical Sciences is a prestigious institution in Japan known for academic excellence and research innovation. Located in Tokyo, it offers a vibrant campus life and world-class facilities for international students.',
  '$8K - $10K/year',
  7528,
  11347,
  5.7,
  'Jan 4, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  447,
  38,
  54253,
  12.9,
  176,
  'http://www.oups.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Science University of Tokyo',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Science University of Tokyo is a prestigious institution in Japan known for academic excellence and research innovation. Located in Tokyo, it offers a vibrant campus life and world-class facilities for international students.',
  '$8K - $12K/year',
  5143,
  14848,
  6.3,
  'Jan 8, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  454,
  75,
  35939,
  19,
  249,
  'http://www.sut.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Tokyo Institute of Technology',
  'Japan',
  '🇯🇵',
  'Tokyo',
  'Tokyo Institute of Technology is a prestigious institution in Japan known for academic excellence and research innovation. Located in Tokyo, it offers a vibrant campus life and world-class facilities for international students.',
  '$9K - $13K/year',
  9489,
  12854,
  5.9,
  'Jan 23, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  498,
  53,
  46373,
  9.1,
  86,
  'http://www.titech.ac.jp'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Korea University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Korea University in Seoul, Korea, Republic of is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$8K - $8K/year',
  7814,
  8227,
  5.8,
  'Mar 8, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  30,
  43,
  31719,
  7.2,
  201,
  'http://www.korea.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Korea University of Technology and Education',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Korea University of Technology and Education is a prestigious institution in Korea, Republic of known for academic excellence and research innovation. Located in Seoul, it offers a vibrant campus life and world-class facilities for international students.',
  '$7K - $9K/year',
  5827,
  8907,
  5.6,
  'Mar 3, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  42,
  39,
  51034,
  29.8,
  170,
  'http://www.koreatech.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Seoul National University of Education',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Founded in Korea, Republic of, Seoul National University of Education has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$7K - $9K/year',
  7363,
  9481,
  6,
  'Mar 6, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  83,
  61,
  14334,
  27.3,
  162,
  'http://www.seoul-e.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Seoul National University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Seoul National University is a prestigious institution in Korea, Republic of known for academic excellence and research innovation. Located in Seoul, it offers a vibrant campus life and world-class facilities for international students.',
  '$7K - $8K/year',
  6643,
  8635,
  5.7,
  'Mar 13, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  65,
  37,
  26869,
  12.7,
  221,
  'http://www.snu.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Seoul National University of Technology',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Seoul National University of Technology in Seoul, Korea, Republic of is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$7K - $11K/year',
  6228,
  11046,
  6.3,
  'Mar 17, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  87,
  38,
  39628,
  20.7,
  92,
  'http://www.snut.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Seoul National University of Science and Technology',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Seoul National University of Science and Technology is a prestigious institution in Korea, Republic of known for academic excellence and research innovation. Located in Seoul, it offers a vibrant campus life and world-class facilities for international students.',
  '$5K - $11K/year',
  4804,
  12000,
  6.2,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  136,
  70,
  53696,
  34.1,
  115,
  'http://www.seoultech.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Science and Technology',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Founded in Korea, Republic of, University of Science and Technology has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$7K - $8K/year',
  6231,
  8540,
  5.8,
  'Mar 19, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  142,
  51,
  26361,
  22.5,
  88,
  'http://www.ust.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Yonsei University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Yonsei University in Seoul, Korea, Republic of is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$9K - $11K/year',
  7773,
  11340,
  6.4,
  'Mar 9, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  151,
  23,
  41408,
  34.9,
  283,
  'http://www.yonsei.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Pusan National University of Education',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Pusan National University of Education in Seoul, Korea, Republic of is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$7K - $9K/year',
  5196,
  9951,
  6,
  'Mar 11, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  198,
  61,
  52958,
  27.4,
  77,
  'http://www.pusan-e.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Korea National Sport University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Korea National Sport University in Seoul, Korea, Republic of is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$5K - $9K/year',
  4737,
  10210,
  6.1,
  'Mar 20, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  171,
  47,
  40902,
  31,
  64,
  'http://www.knsu.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Kwangju National University of Education',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Kwangju National University of Education in Seoul, Korea, Republic of is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$6K - $10K/year',
  5141,
  11022,
  6,
  'Mar 17, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  217,
  39,
  42930,
  16.9,
  130,
  'http://www.kwangju-e.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Namseoul University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Namseoul University in Seoul, Korea, Republic of is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$7K - $10K/year',
  4987,
  10115,
  6,
  'Mar 13, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  260,
  49,
  45923,
  20.3,
  296,
  'http://www.nsu.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Pyongtaek University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Founded in Korea, Republic of, Pyongtaek University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$7K - $11K/year',
  5029,
  11880,
  5.7,
  'Mar 3, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  262,
  28,
  40177,
  33.1,
  275,
  'http://www.ptuniv.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Myongji University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Founded in Korea, Republic of, Myongji University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $10K/year',
  5116,
  11433,
  5.9,
  'Mar 19, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  248,
  47,
  13304,
  32.1,
  172,
  'http://www.myongji.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Konyang University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Konyang University in Seoul, Korea, Republic of is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$7K - $8K/year',
  6120,
  8827,
  5.7,
  'Mar 21, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  313,
  48,
  12396,
  20.4,
  186,
  'http://www.konyang.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Korea National University of Cultural Heritage',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Korea National University of Cultural Heritage in Seoul, Korea, Republic of is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$8K - $8K/year',
  7145,
  8097,
  6,
  'Mar 3, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  284,
  57,
  36803,
  21.3,
  81,
  'http://www.nuch.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Kyungnam University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Kyungnam University in Seoul, Korea, Republic of is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$7K - $8K/year',
  6918,
  8397,
  6.4,
  'Mar 16, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  356,
  21,
  40212,
  11.1,
  63,
  'http://www.kyungnam.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Pohang University of Science and Technology',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Pohang University of Science and Technology is a prestigious institution in Korea, Republic of known for academic excellence and research innovation. Located in Seoul, it offers a vibrant campus life and world-class facilities for international students.',
  '$7K - $11K/year',
  6678,
  11645,
  6,
  'Mar 3, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  345,
  68,
  35566,
  20.9,
  110,
  'http://www.postech.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Kyungwon University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Kyungwon University is a prestigious institution in Korea, Republic of known for academic excellence and research innovation. Located in Seoul, it offers a vibrant campus life and world-class facilities for international students.',
  '$7K - $12K/year',
  5542,
  11758,
  6.1,
  'Mar 21, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  364,
  22,
  18656,
  25.9,
  190,
  'http://www.kyungwon.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nambu University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Nambu University in Seoul, Korea, Republic of is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$7K - $8K/year',
  7074,
  9039,
  6.4,
  'Mar 10, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  399,
  62,
  46719,
  15.7,
  82,
  'http://www.nambu.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Korea Nazarene University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Korea Nazarene University in Seoul, Korea, Republic of is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$7K - $9K/year',
  4104,
  11538,
  5.9,
  'Mar 15, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  386,
  54,
  49952,
  34.7,
  201,
  'http://www.kornu.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Kwangshin University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Kwangshin University in Seoul, Korea, Republic of is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$7K - $8K/year',
  7052,
  8861,
  5.8,
  'Mar 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  421,
  26,
  29889,
  10.1,
  245,
  'http://www.kwangshin.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Mokpo National University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Mokpo National University in Seoul, Korea, Republic of is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$8K - $9K/year',
  7411,
  9448,
  5.6,
  'Mar 19, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  428,
  35,
  39970,
  26.5,
  119,
  'http://www.mokpo.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Daejin University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Founded in Korea, Republic of, Daejin University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$8K - $9K/year',
  7597,
  9391,
  6.4,
  'Mar 3, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  434,
  52,
  12522,
  5.6,
  257,
  'http://www.daejin.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Duksung Women''s University',
  'Korea, Republic of',
  '🇰🇷',
  'Seoul',
  'Founded in Korea, Republic of, Duksung Women''s University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$7K - $8K/year',
  6972,
  8002,
  5.8,
  'Mar 22, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  466,
  63,
  22135,
  18.4,
  273,
  'http://www.duksung.ac.kr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Sun Yat-Sen University',
  'China',
  '🇨🇳',
  'Beijing',
  'Sun Yat-Sen University in Beijing, China is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$7K - $8K/year',
  6248,
  8491,
  6,
  'Mar 25, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  15,
  34,
  39362,
  13.6,
  233,
  'https://sysu.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Fudan University',
  'China',
  '🇨🇳',
  'Shanghai',
  'Fudan University in Shanghai, China is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$6K - $6K/year',
  4717,
  7370,
  5.8,
  'Mar 5, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  31,
  17,
  7593,
  27,
  134,
  'http://www.fudan.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Sun Yat-Sen University of Medical Sciences',
  'China',
  '🇨🇳',
  'Beijing',
  'Sun Yat-Sen University of Medical Sciences in Beijing, China is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$6K - $7K/year',
  5304,
  7340,
  6.2,
  'Mar 28, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  59,
  58,
  11012,
  21.2,
  173,
  'http://www.gzsums.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nanjing University of Chemical Technology',
  'China',
  '🇨🇳',
  'Beijing',
  'Nanjing University of Chemical Technology is a prestigious institution in China known for academic excellence and research innovation. Located in Beijing, it offers a vibrant campus life and world-class facilities for international students.',
  '$5K - $8K/year',
  4173,
  8221,
  5.8,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  75,
  45,
  12923,
  33.7,
  254,
  'http://www.njuct.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nanjing University',
  'China',
  '🇨🇳',
  'Beijing',
  'Founded in China, Nanjing University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $7K/year',
  5627,
  8287,
  6,
  'Mar 16, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  78,
  27,
  22482,
  16,
  298,
  'http://www.nju.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nanjing University of Economics',
  'China',
  '🇨🇳',
  'Beijing',
  'Founded in China, Nanjing University of Economics has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$5K - $6K/year',
  4130,
  6569,
  6.4,
  'Mar 19, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  115,
  19,
  25259,
  8.4,
  196,
  'http://www.njue.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nanjing University of Posts and Telecommunications',
  'China',
  '🇨🇳',
  'Beijing',
  'Nanjing University of Posts and Telecommunications in Beijing, China is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$5K - $8K/year',
  3744,
  9568,
  6.3,
  'Mar 17, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  118,
  49,
  55598,
  8.5,
  204,
  'http://www.njupt.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nanjing University of Science and Technology',
  'China',
  '🇨🇳',
  'Beijing',
  'Founded in China, Nanjing University of Science and Technology has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $8K/year',
  5194,
  9171,
  6.3,
  'Mar 16, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  149,
  18,
  22853,
  26.7,
  92,
  'http://www.njust.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nanjing University of Traditional Chinese Medicine',
  'China',
  '🇨🇳',
  'Beijing',
  'Founded in China, Nanjing University of Traditional Chinese Medicine has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$5K - $7K/year',
  3040,
  7669,
  5.6,
  'Mar 22, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  156,
  15,
  12100,
  10.9,
  147,
  'http://www.njutcm.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nanjing University of Aeronautics and Astronautics',
  'China',
  '🇨🇳',
  'Beijing',
  'Nanjing University of Aeronautics and Astronautics in Beijing, China is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$5K - $6K/year',
  4230,
  6847,
  5.9,
  'Mar 2, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  179,
  40,
  59433,
  22.6,
  264,
  'http://www.nuaa.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Peking University',
  'China',
  '🇨🇳',
  'Beijing',
  'Peking University in Beijing, China is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$4K - $7K/year',
  3061,
  7106,
  5.8,
  'Mar 22, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  170,
  22,
  27868,
  35,
  161,
  'http://www.pku.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Tsinghua University',
  'China',
  '🇨🇳',
  'Beijing',
  'Founded in China, Tsinghua University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $7K/year',
  5768,
  7872,
  5.9,
  'Mar 2, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  168,
  17,
  47612,
  31.9,
  280,
  'http://www.tsinghua.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Zhejiang University',
  'China',
  '🇨🇳',
  'Beijing',
  'Zhejiang University in Beijing, China is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$5K - $6K/year',
  3578,
  7609,
  5.8,
  'Mar 25, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  190,
  30,
  39528,
  10.2,
  82,
  'http://www.zju.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Zhejiang University of Technology',
  'China',
  '🇨🇳',
  'Beijing',
  'Zhejiang University of Technology is a prestigious institution in China known for academic excellence and research innovation. Located in Beijing, it offers a vibrant campus life and world-class facilities for international students.',
  '$7K - $7K/year',
  3767,
  9604,
  6.1,
  'Mar 14, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  216,
  15,
  41697,
  10.9,
  133,
  'http://www.zjut.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nanjing University of Information Science and Technology',
  'China',
  '🇨🇳',
  'Jiangsu',
  'Founded in China, Nanjing University of Information Science and Technology has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $7K/year',
  5264,
  8063,
  6.5,
  'Mar 26, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  251,
  52,
  10236,
  34,
  266,
  'https://www.nuist.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Shanghai Jiao Tong University',
  'China',
  '🇨🇳',
  'Beijing',
  'Shanghai Jiao Tong University in Beijing, China is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$6K - $8K/year',
  5685,
  8122,
  6.1,
  'Mar 19, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  239,
  20,
  21102,
  16.5,
  178,
  'https://en.sjtu.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Jiangsu University of Science and Technology',
  'China',
  '🇨🇳',
  'Beijing',
  'Founded in China, Jiangsu University of Science and Technology has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $7K/year',
  6208,
  6898,
  6,
  'Mar 8, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  232,
  51,
  36165,
  13.6,
  203,
  'http://www.jsust.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Huizhou University',
  'China',
  '🇨🇳',
  'Beijing',
  'Huizhou University is a prestigious institution in China known for academic excellence and research innovation. Located in Beijing, it offers a vibrant campus life and world-class facilities for international students.',
  '$4K - $7K/year',
  3895,
  7020,
  5.8,
  'Mar 4, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  257,
  29,
  13243,
  11.3,
  117,
  'http://www.hzu.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'International Business University of Beijing',
  'China',
  '🇨🇳',
  'Beijing',
  'International Business University of Beijing in Beijing, China is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$5K - $7K/year',
  3218,
  8716,
  5.7,
  'Mar 3, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  319,
  24,
  44151,
  11.2,
  97,
  'http://www.ibub.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Jiaying University',
  'China',
  '🇨🇳',
  'Beijing',
  'Jiaying University in Beijing, China is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$4K - $6K/year',
  3922,
  7418,
  5.7,
  'Mar 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  332,
  53,
  11249,
  23.7,
  136,
  'http://www.jyu.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Jingdezhen China Institute',
  'China',
  '🇨🇳',
  'Beijing',
  'Founded in China, Jingdezhen China Institute has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$7K - $7K/year',
  5459,
  7731,
  6.4,
  'Mar 14, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  319,
  18,
  10426,
  5.3,
  95,
  'http://www.jci.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Inner Mongolia University',
  'China',
  '🇨🇳',
  'Beijing',
  'Inner Mongolia University is a prestigious institution in China known for academic excellence and research innovation. Located in Beijing, it offers a vibrant campus life and world-class facilities for international students.',
  '$4K - $8K/year',
  4357,
  8759,
  6.1,
  'Mar 15, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  324,
  45,
  42778,
  21.2,
  61,
  'http://www.imu.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Henan Buddhist College',
  'China',
  '🇨🇳',
  'Beijing',
  'Founded in China, Henan Buddhist College has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$5K - $6K/year',
  4924,
  6563,
  6.3,
  'Mar 8, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  360,
  55,
  25128,
  10,
  204,
  'http://www.hnfjxy.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Hunan Normal University',
  'China',
  '🇨🇳',
  'Beijing',
  'Hunan Normal University is a prestigious institution in China known for academic excellence and research innovation. Located in Beijing, it offers a vibrant campus life and world-class facilities for international students.',
  '$7K - $7K/year',
  6188,
  6844,
  5.8,
  'Mar 16, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  375,
  36,
  23945,
  13.1,
  243,
  'http://www.hunnu.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Gansu Agricultural University',
  'China',
  '🇨🇳',
  'Beijing',
  'Founded in China, Gansu Agricultural University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$4K - $6K/year',
  3134,
  6640,
  5.8,
  'Mar 6, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  378,
  53,
  34157,
  34.6,
  54,
  'http://www.gsau.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Universiti Putra Malaysia',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Universiti Putra Malaysia in Kuala Lumpur, Malaysia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$5K - $6K/year',
  3892,
  6678,
  6,
  'Apr 21, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  60,
  56,
  46904,
  33.6,
  259,
  'http://www.upm.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Universiti Sains Malaysia',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Universiti Sains Malaysia is a prestigious institution in Malaysia known for academic excellence and research innovation. Located in Kuala Lumpur, it offers a vibrant campus life and world-class facilities for international students.',
  '$5K - $6K/year',
  4541,
  6420,
  5.9,
  'Apr 28, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  94,
  50,
  51208,
  12,
  99,
  'http://www.usm.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Darul Hikmah Islamic College',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Darul Hikmah Islamic College is a prestigious institution in Malaysia known for academic excellence and research innovation. Located in Kuala Lumpur, it offers a vibrant campus life and world-class facilities for international students.',
  '$5K - $6K/year',
  4688,
  6373,
  5.5,
  'Apr 20, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  121,
  40,
  24224,
  5.2,
  135,
  'http://www.hikmah.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Petronas Technology University',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Petronas Technology University is a prestigious institution in Malaysia known for academic excellence and research innovation. Located in Kuala Lumpur, it offers a vibrant campus life and world-class facilities for international students.',
  '$5K - $5K/year',
  3589,
  6457,
  5.9,
  'Apr 9, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  131,
  64,
  42411,
  27.8,
  179,
  'http://www.utp.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Institute of Teachers Education, Melaka',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Founded in Malaysia, Institute of Teachers Education, Melaka has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$5K - $6K/year',
  3654,
  7540,
  5.5,
  'Apr 6, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  141,
  74,
  9833,
  20.4,
  300,
  'http://www.ippm.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Binary University College of Managemant & Entrepreneurship',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Founded in Malaysia, Binary University College of Managemant & Entrepreneurship has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$5K - $6K/year',
  5095,
  5692,
  5.7,
  'Apr 23, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  201,
  49,
  25248,
  8.9,
  197,
  'http://www.binary.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'International Islamic College',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'International Islamic College in Kuala Lumpur, Malaysia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$6K - $6K/year',
  5423,
  6820,
  5.9,
  'Apr 2, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  197,
  79,
  19467,
  33.2,
  52,
  'http://www.iic.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Darul Takzim Institute of Technology',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Darul Takzim Institute of Technology in Kuala Lumpur, Malaysia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$5K - $6K/year',
  4118,
  5957,
  6,
  'Apr 5, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  228,
  46,
  10681,
  26.4,
  168,
  'http://www.instedt.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'International Islamic University',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'International Islamic University is a prestigious institution in Malaysia known for academic excellence and research innovation. Located in Kuala Lumpur, it offers a vibrant campus life and world-class facilities for international students.',
  '$5K - $7K/year',
  3367,
  7722,
  5.8,
  'Apr 14, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  252,
  53,
  32780,
  19.1,
  99,
  'http://www.iiu.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Institute of Teachers Education, Malay Language',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Founded in Malaysia, Institute of Teachers Education, Malay Language has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$4K - $6K/year',
  3543,
  7541,
  5.6,
  'Apr 6, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  313,
  74,
  36783,
  28.8,
  202,
  'http://www.ipbmm.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Iact College',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Iact College in Kuala Lumpur, Malaysia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$6K - $6K/year',
  5150,
  7268,
  5.6,
  'Apr 2, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  340,
  52,
  33986,
  34.4,
  275,
  'http://www.iact.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Institute of Teachers Education, Keningau',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Founded in Malaysia, Institute of Teachers Education, Keningau has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$4K - $6K/year',
  3674,
  6360,
  6,
  'Apr 14, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  356,
  49,
  39571,
  33.9,
  265,
  'http://www.ipks.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'International University College of Technology Twintech (IUCTT)',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'International University College of Technology Twintech (IUCTT) in Kuala Lumpur, Malaysia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $5K/year',
  3182,
  5655,
  5.6,
  'Apr 4, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  382,
  45,
  21125,
  25.5,
  104,
  'http://www.iuctt.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Institute of Teachers Education, Tuanku Bainun',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Institute of Teachers Education, Tuanku Bainun in Kuala Lumpur, Malaysia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $4K/year',
  3059,
  5678,
  5.7,
  'Apr 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  408,
  63,
  30870,
  25.9,
  58,
  'http://www.iptb.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Institute of Teachers Education, Tengku Ampuan Afzan',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Founded in Malaysia, Institute of Teachers Education, Tengku Ampuan Afzan has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $7K/year',
  4971,
  7393,
  6,
  'Apr 27, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  439,
  52,
  55291,
  7.8,
  105,
  'http://www.iptaa.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Institute of Teachers Education, Perlis',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Institute of Teachers Education, Perlis is a prestigious institution in Malaysia known for academic excellence and research innovation. Located in Kuala Lumpur, it offers a vibrant campus life and world-class facilities for international students.',
  '$5K - $6K/year',
  4101,
  7590,
  5.8,
  'Apr 7, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  456,
  84,
  30205,
  24.8,
  169,
  'http://www.ipgperlis.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Institute of Teachers Education, Rajang',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Founded in Malaysia, Institute of Teachers Education, Rajang has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $6K/year',
  5025,
  6100,
  5.9,
  'Apr 19, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  510,
  73,
  27601,
  29.9,
  240,
  'http://www.ipgkrajang.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Institute of Teachers Education, Batu Lintang',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Institute of Teachers Education, Batu Lintang is a prestigious institution in Malaysia known for academic excellence and research innovation. Located in Kuala Lumpur, it offers a vibrant campus life and world-class facilities for international students.',
  '$3K - $6K/year',
  3184,
  7558,
  5.9,
  'Apr 19, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  504,
  63,
  32987,
  11.3,
  136,
  'http://www.ipbl.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Institute of Teachers Education, Sultan Abdul Halim',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Founded in Malaysia, Institute of Teachers Education, Sultan Abdul Halim has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$5K - $8K/year',
  3021,
  7623,
  5.9,
  'Apr 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  533,
  85,
  41968,
  10.4,
  194,
  'http://www.ipsah.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Al-Bukhari International University',
  'Malaysia',
  '🇲🇾',
  'Kuala Lumpur',
  'Founded in Malaysia, Al-Bukhari International University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$5K - $7K/year',
  3970,
  7413,
  5.8,
  'Apr 7, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  560,
  83,
  24466,
  9.1,
  277,
  'http://www.aiu.edu.my'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nanyang Technological University',
  'Singapore',
  '🇸🇬',
  'Singapore',
  'Founded in Singapore, Nanyang Technological University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$31K - $38K/year',
  25945,
  38974,
  6.6,
  'Jan 9, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  18,
  8,
  29313,
  7.6,
  196,
  'https://www.ntu.edu.sg'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'National University of Singapore',
  'Singapore',
  '🇸🇬',
  'Singapore',
  'National University of Singapore is a prestigious institution in Singapore known for academic excellence and research innovation. Located in Singapore, it offers a vibrant campus life and world-class facilities for international students.',
  '$27K - $27K/year',
  26720,
  27553,
  6.8,
  'Jan 27, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  8,
  5,
  46653,
  26,
  298,
  'https://www.nus.edu'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Singapore Institute of Management (SIM)',
  'Singapore',
  '🇸🇬',
  'Singapore',
  'Founded in Singapore, Singapore Institute of Management (SIM) has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$24K - $30K/year',
  22447,
  33812,
  6.9,
  'Jan 2, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  9,
  9,
  51444,
  29.7,
  230,
  'https://www.sim.edu.sg'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Singapore Management University',
  'Singapore',
  '🇸🇬',
  'Singapore',
  'Singapore Management University in Singapore, Singapore is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$26K - $28K/year',
  24804,
  27910,
  6.7,
  'Jan 1, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  50,
  7,
  12953,
  30.4,
  220,
  'https://www.smu.edu.sg'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Taoist College Singapore',
  'Singapore',
  '🇸🇬',
  'Singapore',
  'Founded in Singapore, Taoist College Singapore has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$21K - $37K/year',
  20432,
  38867,
  6.6,
  'Jan 10, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  63,
  6,
  27199,
  22.2,
  213,
  'https://www.taoistcollege.org.sg'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Singapore Institute of Technology',
  'Singapore',
  '🇸🇬',
  'Singapore',
  'Singapore Institute of Technology is a prestigious institution in Singapore known for academic excellence and research innovation. Located in Singapore, it offers a vibrant campus life and world-class facilities for international students.',
  '$18K - $24K/year',
  15762,
  31978,
  6.8,
  'Jan 24, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  53,
  20,
  50188,
  27.5,
  280,
  'https://www.singaporetech.edu.sg'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Singapore University of Technology and Design',
  'Singapore',
  '🇸🇬',
  'Singapore',
  'Founded in Singapore, Singapore University of Technology and Design has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$23K - $30K/year',
  19384,
  30730,
  6.7,
  'Jan 20, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  62,
  16,
  52999,
  8.1,
  177,
  'https://www.sutd.edu.sg'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Institute of Technical Education',
  'Singapore',
  '🇸🇬',
  'Singapore',
  'Founded in Singapore, Institute of Technical Education has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$18K - $28K/year',
  18286,
  32544,
  6.9,
  'Jan 4, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  44,
  18,
  22024,
  15.1,
  75,
  'https://www.ite.edu.sg'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Istanbul University in Istanbul, Turkey is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $4K/year',
  1305,
  4378,
  6.3,
  'Jun 9, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  225,
  70,
  49859,
  33.5,
  167,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 2',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Istanbul University 2 in Istanbul, Turkey is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $3K/year',
  1244,
  3172,
  6.1,
  'Jun 2, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  246,
  56,
  18210,
  7.4,
  256,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 3',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Founded in Turkey, Istanbul University 3 has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$2K - $3K/year',
  1765,
  4786,
  6.1,
  'Jun 14, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  273,
  65,
  47044,
  18.6,
  89,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 4',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Istanbul University 4 in Istanbul, Turkey is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $3K/year',
  1611,
  2955,
  6,
  'Jun 17, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  280,
  43,
  51936,
  19.6,
  205,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 5',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Istanbul University 5 is a prestigious institution in Turkey known for academic excellence and research innovation. Located in Istanbul, it offers a vibrant campus life and world-class facilities for international students.',
  '$1K - $3K/year',
  577,
  3395,
  6.4,
  'Jun 2, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  336,
  68,
  35010,
  19.8,
  242,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 6',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Istanbul University 6 is a prestigious institution in Turkey known for academic excellence and research innovation. Located in Istanbul, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $3K/year',
  1569,
  3629,
  6.5,
  'Jun 15, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  354,
  34,
  56557,
  13.4,
  108,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 7',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Founded in Turkey, Istanbul University 7 has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$3K - $3K/year',
  2668,
  3587,
  6.5,
  'Jun 14, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  379,
  39,
  9338,
  6.6,
  93,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 8',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Founded in Turkey, Istanbul University 8 has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$2K - $3K/year',
  1262,
  3698,
  6.4,
  'Jun 22, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  416,
  49,
  31155,
  12.2,
  110,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 9',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Istanbul University 9 is a prestigious institution in Turkey known for academic excellence and research innovation. Located in Istanbul, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $3K/year',
  775,
  3571,
  5.9,
  'Jun 12, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  427,
  49,
  40871,
  8.1,
  211,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 10',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Istanbul University 10 in Istanbul, Turkey is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $4K/year',
  2355,
  4169,
  6.4,
  'Jun 24, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  490,
  49,
  5287,
  16.6,
  173,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 11',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Istanbul University 11 is a prestigious institution in Turkey known for academic excellence and research innovation. Located in Istanbul, it offers a vibrant campus life and world-class facilities for international students.',
  '$3K - $3K/year',
  685,
  4883,
  6.5,
  'Jun 25, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  495,
  46,
  46054,
  6.2,
  190,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 12',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Istanbul University 12 is a prestigious institution in Turkey known for academic excellence and research innovation. Located in Istanbul, it offers a vibrant campus life and world-class facilities for international students.',
  '$1K - $3K/year',
  1034,
  3052,
  6.5,
  'Jun 5, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  557,
  63,
  51896,
  10.7,
  182,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 13',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Founded in Turkey, Istanbul University 13 has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$1K - $5K/year',
  832,
  4974,
  5.5,
  'Jun 7, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  549,
  32,
  49944,
  26.1,
  137,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 14',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Istanbul University 14 in Istanbul, Turkey is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $4K/year',
  2581,
  4573,
  6.1,
  'Jun 25, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  599,
  32,
  34027,
  23.4,
  95,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 15',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Istanbul University 15 is a prestigious institution in Turkey known for academic excellence and research innovation. Located in Istanbul, it offers a vibrant campus life and world-class facilities for international students.',
  '$3K - $3K/year',
  2447,
  2842,
  5.5,
  'Jun 12, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  604,
  58,
  46860,
  21.6,
  198,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 16',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Istanbul University 16 in Istanbul, Turkey is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $3K/year',
  1950,
  3148,
  6.1,
  'Jun 11, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  669,
  33,
  56732,
  11.7,
  173,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 17',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Istanbul University 17 is a prestigious institution in Turkey known for academic excellence and research innovation. Located in Istanbul, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $3K/year',
  1057,
  2947,
  5.9,
  'Jun 18, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  689,
  60,
  48196,
  24.6,
  55,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 18',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Founded in Turkey, Istanbul University 18 has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$2K - $5K/year',
  973,
  4915,
  5.7,
  'Jun 26, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  732,
  52,
  32179,
  5.9,
  201,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 19',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Istanbul University 19 is a prestigious institution in Turkey known for academic excellence and research innovation. Located in Istanbul, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $3K/year',
  1663,
  3575,
  5.6,
  'Jun 1, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  722,
  57,
  58228,
  27.2,
  259,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Istanbul University 20',
  'Turkey',
  '🇹🇷',
  'Istanbul',
  'Founded in Turkey, Istanbul University 20 has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$3K - $4K/year',
  2098,
  4135,
  6.2,
  'Jun 9, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  753,
  54,
  43012,
  24.4,
  50,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Delhi',
  'India',
  '🇮🇳',
  'Delhi',
  'University of Delhi in Delhi, India is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$5K - $9K/year',
  3215,
  9446,
  6.4,
  'May 6, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  130,
  26,
  56112,
  14.3,
  299,
  'http://www.du.ac.in'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Indian Institute of Technology, Bombay',
  'India',
  '🇮🇳',
  'Maharashtra',
  'Indian Institute of Technology, Bombay in Maharashtra, India is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$7K - $8K/year',
  5498,
  9513,
  6.1,
  'May 26, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  124,
  20,
  37598,
  5.9,
  120,
  'http://www.iitb.ac.in'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Indian Institute of Technology, Delhi',
  'India',
  '🇮🇳',
  'Delhi',
  'Indian Institute of Technology, Delhi in Delhi, India is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$5K - $8K/year',
  3889,
  8540,
  6.2,
  'May 22, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  197,
  37,
  52939,
  29,
  290,
  'http://www.iitd.ernet.in'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Indian Institute of Technology, Gandhinagar',
  'India',
  '🇮🇳',
  'Gujarat',
  'Indian Institute of Technology, Gandhinagar is a prestigious institution in India known for academic excellence and research innovation. Located in Gujarat, it offers a vibrant campus life and world-class facilities for international students.',
  '$4K - $5K/year',
  2326,
  6466,
  6.2,
  'May 26, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  193,
  39,
  11236,
  20.3,
  192,
  'https://iitgn.ac.in'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Indian Institute of Technology, Guwahati',
  'India',
  '🇮🇳',
  'Assam',
  'Founded in India, Indian Institute of Technology, Guwahati has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$4K - $9K/year',
  3341,
  9737,
  6.2,
  'May 9, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  251,
  22,
  10535,
  29,
  239,
  'http://www.iitg.ernet.in'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Indian Institute of Technology, Hyderabad',
  'India',
  '🇮🇳',
  'Telangana',
  'Indian Institute of Technology, Hyderabad is a prestigious institution in India known for academic excellence and research innovation. Located in Telangana, it offers a vibrant campus life and world-class facilities for international students.',
  '$4K - $5K/year',
  2778,
  6942,
  6.3,
  'May 5, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  291,
  36,
  53092,
  18.7,
  62,
  'http://www.iith.ac.in'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Indian Institute of Technology, Kanpur',
  'India',
  '🇮🇳',
  'Uttar Pradesh',
  'Founded in India, Indian Institute of Technology, Kanpur has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $8K/year',
  4294,
  8355,
  6.3,
  'May 21, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  272,
  32,
  32125,
  30.4,
  285,
  'http://www.iitk.ac.in'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Indian Institute of Technology, Kharagpur',
  'India',
  '🇮🇳',
  'West Bengal',
  'Founded in India, Indian Institute of Technology, Kharagpur has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$4K - $9K/year',
  3780,
  9038,
  6.3,
  'May 9, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  347,
  24,
  47752,
  30.1,
  249,
  'http://www.iitkgp.ernet.in'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Indian Institute of Technology, Madras',
  'India',
  '🇮🇳',
  'Tamil Nadu',
  'Indian Institute of Technology, Madras in Tamil Nadu, India is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$5K - $6K/year',
  4132,
  7328,
  6.1,
  'May 24, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  340,
  29,
  45272,
  10.9,
  79,
  'http://www.iitm.ac.in'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Indian Institute of Technology, Roorkee',
  'India',
  '🇮🇳',
  'Uttarakhand',
  'Founded in India, Indian Institute of Technology, Roorkee has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $8K/year',
  4474,
  8557,
  6.2,
  'May 2, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  411,
  20,
  37921,
  28.5,
  200,
  'http://www.iitr.ac.in'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Indian Institute of Technology, Patna',
  'India',
  '🇮🇳',
  'Bihar',
  'Founded in India, Indian Institute of Technology, Patna has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $7K/year',
  5020,
  8450,
  6.5,
  'May 9, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  444,
  17,
  34976,
  10.4,
  150,
  'http://www.iitp.ac.in'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Indian Institute of Technology, Indore',
  'India',
  '🇮🇳',
  'Madhya Pradesh',
  'Founded in India, Indian Institute of Technology, Indore has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$4K - $7K/year',
  4070,
  7607,
  6,
  'May 18, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  439,
  14,
  20359,
  34.4,
  119,
  'http://www.iiti.ac.in'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Indian Institute of Technology, Jodhpur',
  'India',
  '🇮🇳',
  'Rajasthan',
  'Founded in India, Indian Institute of Technology, Jodhpur has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $9K/year',
  4914,
  9886,
  6.2,
  'May 4, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  491,
  50,
  7635,
  34,
  77,
  'http://www.iitj.ac.in'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'MIT World Peace University',
  'India',
  '🇮🇳',
  'Maharashtra',
  'MIT World Peace University in Maharashtra, India is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$5K - $7K/year',
  4286,
  7072,
  6.2,
  'May 8, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  546,
  20,
  28330,
  25.2,
  166,
  'https://mitwpu.edu.in'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Shreemati Nathibai Damodar Thackersey Women''s University',
  'India',
  '🇮🇳',
  'New Delhi',
  'Shreemati Nathibai Damodar Thackersey Women''s University in New Delhi, India is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$6K - $7K/year',
  3093,
  9693,
  6.3,
  'May 15, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  584,
  23,
  46838,
  8.8,
  151,
  'http://www.sndt.edu'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Chulalongkorn University',
  'Thailand',
  '🇹🇭',
  'Bangkok',
  'Founded in Thailand, Chulalongkorn University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$4K - $4K/year',
  3981,
  4476,
  5.6,
  'Apr 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  118,
  41,
  40602,
  11.6,
  201,
  'https://www.chula.ac.th'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Mahidol University',
  'Thailand',
  '🇹🇭',
  'Nakhon Pathom',
  'Mahidol University in Nakhon Pathom, Thailand is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $4K/year',
  3097,
  4544,
  5.9,
  'Apr 15, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  131,
  48,
  8650,
  9.3,
  83,
  'https://www.mahidol.ac.th'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Mahidol University International College',
  'Thailand',
  '🇹🇭',
  'Nakhon Pathom',
  'Founded in Thailand, Mahidol University International College has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$4K - $5K/year',
  3025,
  5895,
  5.6,
  'Apr 8, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  191,
  56,
  10703,
  24.1,
  71,
  'https://www.muic.mahidol.ac.th'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Suranaree University of Technology',
  'Thailand',
  '🇹🇭',
  'Nakhon Ratchasima',
  'Suranaree University of Technology is a prestigious institution in Thailand known for academic excellence and research innovation. Located in Nakhon Ratchasima, it offers a vibrant campus life and world-class facilities for international students.',
  '$3K - $4K/year',
  2549,
  4067,
  5.9,
  'Apr 1, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  283,
  67,
  17220,
  5.3,
  56,
  'http://www.sut.ac.th'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nation University',
  'Thailand',
  '🇹🇭',
  'Lampang',
  'Founded in Thailand, Nation University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$3K - $5K/year',
  3031,
  5074,
  5.6,
  'Apr 8, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  348,
  63,
  59056,
  21.7,
  233,
  'http://www.nation.ac.th'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Rajamangala University of Technology, Lanna Nan',
  'Thailand',
  '🇹🇭',
  'Nan',
  'Rajamangala University of Technology, Lanna Nan is a prestigious institution in Thailand known for academic excellence and research innovation. Located in Nan, it offers a vibrant campus life and world-class facilities for international students.',
  '$3K - $4K/year',
  2245,
  4181,
  5.7,
  'Apr 12, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  421,
  59,
  17499,
  31.7,
  191,
  'https://www.nan.rmutl.ac.th'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Lampang College of Commerce and Technology',
  'Thailand',
  '🇹🇭',
  'Lampang',
  'Lampang College of Commerce and Technology in Lampang, Thailand is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$4K - $5K/year',
  3193,
  4855,
  5.8,
  'Apr 2, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  462,
  68,
  49363,
  25.7,
  226,
  'http://www.lcct.ac.th'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Krirk University',
  'Thailand',
  '🇹🇭',
  'Bangkok',
  'Founded in Thailand, Krirk University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$4K - $5K/year',
  3874,
  5282,
  5.6,
  'Apr 6, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  505,
  71,
  59405,
  12.2,
  275,
  'https://www.krirk.ac.th'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Siam University',
  'Thailand',
  '🇹🇭',
  'Bangkok',
  'Siam University in Bangkok, Thailand is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $5K/year',
  3193,
  5050,
  5.6,
  'Apr 26, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  586,
  41,
  21059,
  16.7,
  201,
  'https://www.siam.edu'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Asian University of Science and Technology',
  'Thailand',
  '🇹🇭',
  'Chon Buri',
  'Asian University of Science and Technology is a prestigious institution in Thailand known for academic excellence and research innovation. Located in Chon Buri, it offers a vibrant campus life and world-class facilities for international students.',
  '$4K - $5K/year',
  2068,
  5244,
  5.8,
  'Apr 13, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  647,
  66,
  31396,
  18.2,
  117,
  'http://www.asianust.ac.th'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Bogor Agricultural University',
  'Indonesia',
  '🇮🇩',
  'Jakarta',
  'Bogor Agricultural University is a prestigious institution in Indonesia known for academic excellence and research innovation. Located in Jakarta, it offers a vibrant campus life and world-class facilities for international students.',
  '$3K - $3K/year',
  2601,
  3087,
  5.9,
  'May 21, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  221,
  47,
  48101,
  31,
  162,
  'http://www.ipb.ac.id'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Swiss German University',
  'Indonesia',
  '🇮🇩',
  'Jakarta',
  'Swiss German University is a prestigious institution in Indonesia known for academic excellence and research innovation. Located in Jakarta, it offers a vibrant campus life and world-class facilities for international students.',
  '$3K - $5K/year',
  2710,
  4927,
  5.8,
  'May 3, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  247,
  39,
  40617,
  10,
  193,
  'http://www.sgu.ac.id'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Binus University',
  'Indonesia',
  '🇮🇩',
  'Jakarta',
  'Binus University in Jakarta, Indonesia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$1K - $4K/year',
  1171,
  4179,
  5.9,
  'May 21, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  299,
  41,
  24778,
  27,
  149,
  'http://www.binus.ac.id'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Duta Bangsa University',
  'Indonesia',
  '🇮🇩',
  'Jakarta',
  'Duta Bangsa University in Jakarta, Indonesia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $4K/year',
  2312,
  4148,
  5.7,
  'May 8, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  383,
  39,
  58172,
  34.2,
  168,
  'https://udb.ac.id'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Perbanas Institute',
  'Indonesia',
  '🇮🇩',
  'Jakarta',
  'Perbanas Institute in Jakarta, Indonesia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $3K/year',
  1951,
  4456,
  5.8,
  'May 7, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  463,
  46,
  50325,
  8.1,
  272,
  'http://perbanas.id'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Trisakti Institute of Tourism',
  'Indonesia',
  '🇮🇩',
  'Jakarta',
  'Founded in Indonesia, Trisakti Institute of Tourism has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$3K - $3K/year',
  2133,
  3800,
  5.6,
  'May 14, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  517,
  51,
  32220,
  32.3,
  212,
  'http://www.stptrisakti.ac.id'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Universitas Narotama',
  'Indonesia',
  '🇮🇩',
  'Jakarta',
  'Founded in Indonesia, Universitas Narotama has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$3K - $3K/year',
  1277,
  4807,
  5.8,
  'May 8, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  562,
  53,
  36980,
  12,
  264,
  'http://www.narotama.ac.id'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Universitas Negeri Surabaya',
  'Indonesia',
  '🇮🇩',
  'Jakarta',
  'Universitas Negeri Surabaya in Jakarta, Indonesia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $3K/year',
  2603,
  3056,
  5.6,
  'May 18, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  612,
  32,
  5838,
  18.4,
  173,
  'http://www.unesa.ac.id'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Institut Teknologi Sepuluh Nopember',
  'Indonesia',
  '🇮🇩',
  'Jakarta',
  'Institut Teknologi Sepuluh Nopember in Jakarta, Indonesia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $4K/year',
  1622,
  4857,
  6,
  'May 4, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  682,
  45,
  6554,
  21.7,
  214,
  'http://www.its.ac.id'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'STMIK AMIKOM Yogyakarta',
  'Indonesia',
  '🇮🇩',
  'Jakarta',
  'Founded in Indonesia, STMIK AMIKOM Yogyakarta has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$3K - $3K/year',
  1919,
  3594,
  5.6,
  'May 5, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  748,
  67,
  18553,
  23.6,
  58,
  'http://www.amikom.ac.id'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Adventist University of the Philippines',
  'Philippines',
  '🇵🇭',
  'Calabarzon',
  'Adventist University of the Philippines in Calabarzon, Philippines is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $4K/year',
  3173,
  3813,
  5.9,
  'Jun 11, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  327,
  58,
  36784,
  7.4,
  221,
  'http://www.aup.edu.ph'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'National University',
  'Philippines',
  '🇵🇭',
  'National Capital Region',
  'National University is a prestigious institution in Philippines known for academic excellence and research innovation. Located in National Capital Region, it offers a vibrant campus life and world-class facilities for international students.',
  '$3K - $3K/year',
  2259,
  3878,
  5.8,
  'Jun 21, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  363,
  60,
  7613,
  18.2,
  284,
  'http://www.nu.edu.ph'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Northwestern University of the Philippines',
  'Philippines',
  '🇵🇭',
  'Ilocos',
  'Northwestern University of the Philippines in Ilocos, Philippines is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $3K/year',
  1875,
  3266,
  5.7,
  'Jun 20, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  421,
  74,
  46628,
  12.8,
  122,
  'http://www.nulaoag.com'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Polytechnic University of the Philippines',
  'Philippines',
  '🇵🇭',
  'National Capital Region',
  'Polytechnic University of the Philippines is a prestigious institution in Philippines known for academic excellence and research innovation. Located in National Capital Region, it offers a vibrant campus life and world-class facilities for international students.',
  '$3K - $4K/year',
  2650,
  3839,
  5.9,
  'Jun 27, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  506,
  48,
  17796,
  29.4,
  148,
  'http://www.pup.edu.ph'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Technological University of the Philippines',
  'Philippines',
  '🇵🇭',
  'Western Visayas',
  'Founded in Philippines, Technological University of the Philippines has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$3K - $4K/year',
  2109,
  4456,
  5.7,
  'Jun 13, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  575,
  71,
  38988,
  11.4,
  135,
  'http://www.tup.edu.ph'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of the Philippines Baguio',
  'Philippines',
  '🇵🇭',
  'Cordillera Administrative Region',
  'University of the Philippines Baguio in Cordillera Administrative Region, Philippines is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $3K/year',
  1613,
  3913,
  5.9,
  'Jun 17, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  702,
  64,
  5762,
  9.7,
  69,
  'http://www.upb.edu.ph'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of the Philippines Diliman',
  'Philippines',
  '🇵🇭',
  'National Capital Region',
  'University of the Philippines Diliman in National Capital Region, Philippines is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $4K/year',
  1766,
  4796,
  5.9,
  'Jun 7, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  721,
  46,
  25490,
  26.7,
  203,
  'http://www.upd.edu.ph'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of the Philippines Visayas - Cebu High School',
  'Philippines',
  '🇵🇭',
  'Central Visayas',
  'Founded in Philippines, University of the Philippines Visayas - Cebu High School has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$2K - $4K/year',
  1617,
  4166,
  5.9,
  'Jun 14, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  851,
  61,
  54959,
  9.5,
  80,
  'http://www.uphighschoolcebu.edu.ph'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Phan Chau Trinh University',
  'Vietnam',
  '🇻🇳',
  'Hanoi',
  'Phan Chau Trinh University is a prestigious institution in Vietnam known for academic excellence and research innovation. Located in Hanoi, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $2K/year',
  1541,
  2732,
  5.8,
  'May 9, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  428,
  46,
  35550,
  10.2,
  230,
  'https://pctu.edu.vn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Duy Tan University',
  'Vietnam',
  '🇻🇳',
  'Hanoi',
  'Founded in Vietnam, Duy Tan University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$2K - $2K/year',
  1476,
  3193,
  5.6,
  'May 15, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  531,
  35,
  56567,
  12.3,
  238,
  'https://duytan.edu.vn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Taipei University',
  'Taiwan',
  '🇹🇼',
  'Taipei',
  'Founded in Taiwan, Taipei University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$5K - $7K/year',
  5178,
  7265,
  6.1,
  'Feb 10, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  60,
  26,
  46353,
  35,
  180,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Taipei University 2',
  'Taiwan',
  '🇹🇼',
  'Taipei',
  'Founded in Taiwan, Taipei University 2 has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$5K - $7K/year',
  5017,
  7726,
  6.4,
  'Feb 5, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  103,
  40,
  26328,
  27.9,
  179,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Taipei University 3',
  'Taiwan',
  '🇹🇼',
  'Taipei',
  'Taipei University 3 in Taipei, Taiwan is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$5K - $6K/year',
  4459,
  5721,
  5.6,
  'Feb 4, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  118,
  38,
  33305,
  5.1,
  126,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Taipei University 4',
  'Taiwan',
  '🇹🇼',
  'Taipei',
  'Taipei University 4 in Taipei, Taiwan is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$5K - $6K/year',
  4854,
  6331,
  5.9,
  'Feb 3, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  210,
  39,
  21776,
  6.5,
  165,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Taipei University 5',
  'Taiwan',
  '🇹🇼',
  'Taipei',
  'Taipei University 5 is a prestigious institution in Taiwan known for academic excellence and research innovation. Located in Taipei, it offers a vibrant campus life and world-class facilities for international students.',
  '$5K - $6K/year',
  5197,
  6128,
  5.8,
  'Feb 5, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  249,
  31,
  10825,
  33.1,
  241,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Taipei University 6',
  'Taiwan',
  '🇹🇼',
  'Taipei',
  'Taipei University 6 is a prestigious institution in Taiwan known for academic excellence and research innovation. Located in Taipei, it offers a vibrant campus life and world-class facilities for international students.',
  '$5K - $6K/year',
  5280,
  6979,
  5.9,
  'Feb 18, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  265,
  63,
  39579,
  8.9,
  239,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Taipei University 7',
  'Taiwan',
  '🇹🇼',
  'Taipei',
  'Taipei University 7 in Taipei, Taiwan is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$5K - $6K/year',
  5186,
  5780,
  5.8,
  'Feb 10, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  331,
  44,
  51538,
  10.1,
  203,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Taipei University 8',
  'Taiwan',
  '🇹🇼',
  'Taipei',
  'Taipei University 8 is a prestigious institution in Taiwan known for academic excellence and research innovation. Located in Taipei, it offers a vibrant campus life and world-class facilities for international students.',
  '$5K - $6K/year',
  3494,
  6899,
  6.1,
  'Feb 22, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  374,
  47,
  16016,
  26.5,
  295,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Taipei University 9',
  'Taiwan',
  '🇹🇼',
  'Taipei',
  'Founded in Taiwan, Taipei University 9 has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$5K - $6K/year',
  4155,
  6868,
  5.9,
  'Feb 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  402,
  64,
  6890,
  7.9,
  215,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Taipei University 10',
  'Taiwan',
  '🇹🇼',
  'Taipei',
  'Founded in Taiwan, Taipei University 10 has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$4K - $5K/year',
  3088,
  5774,
  5.6,
  'Feb 18, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  444,
  64,
  33549,
  22.2,
  118,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'City University of Hong Kong',
  'Hong Kong',
  '🇭🇰',
  'Hong Kong',
  'Founded in Hong Kong, City University of Hong Kong has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$19K - $22K/year',
  16786,
  22939,
  6.6,
  'Jan 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  29,
  17,
  57296,
  8.5,
  155,
  'https://www.cityu.edu.hk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'The Chinese University of Hong Kong',
  'Hong Kong',
  '🇭🇰',
  'Hong Kong',
  'The Chinese University of Hong Kong in Hong Kong, Hong Kong is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$18K - $21K/year',
  18150,
  23075,
  7,
  'Jan 20, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  20,
  17,
  37849,
  5.4,
  78,
  'https://www.cuhk.edu.hk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'The University of Hong Kong',
  'Hong Kong',
  '🇭🇰',
  'Hong Kong',
  'The University of Hong Kong in Hong Kong, Hong Kong is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$20K - $24K/year',
  19497,
  24266,
  6.8,
  'Jan 10, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  35,
  30,
  46227,
  8.6,
  110,
  'https://www.hku.hk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'The Hong Kong University of Science and Technology',
  'Hong Kong',
  '🇭🇰',
  'Hong Kong',
  'The Hong Kong University of Science and Technology in Hong Kong, Hong Kong is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$17K - $19K/year',
  16572,
  20292,
  6.9,
  'Jan 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  64,
  28,
  36849,
  32.4,
  263,
  'https://hkust.edu.hk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'The Education University of Hong Kong',
  'Hong Kong',
  '🇭🇰',
  'Hong Kong',
  'The Education University of Hong Kong is a prestigious institution in Hong Kong known for academic excellence and research innovation. Located in Hong Kong, it offers a vibrant campus life and world-class facilities for international students.',
  '$20K - $20K/year',
  19925,
  20380,
  6.1,
  'Jan 14, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  102,
  20,
  6292,
  24.5,
  82,
  'https://www.eduhk.hk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'The Hang Seng University of Hong Kong',
  'Hong Kong',
  '🇭🇰',
  'Hong Kong',
  'The Hang Seng University of Hong Kong in Hong Kong, Hong Kong is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$20K - $23K/year',
  17375,
  23749,
  6.5,
  'Jan 18, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  106,
  17,
  42976,
  32.7,
  124,
  'http://www.hsu.edu.hk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'The Chinese University of Hong Kong',
  'Hong Kong',
  '🇭🇰',
  'Hong Kong',
  'The Chinese University of Hong Kong in Hong Kong, Hong Kong is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$21K - $22K/year',
  18310,
  24499,
  6.1,
  'Jan 2, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  142,
  15,
  55399,
  34.9,
  84,
  'https://www.cuhk.edu.cn'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Hong Kong Shue Yan University',
  'Hong Kong',
  '🇭🇰',
  'Hong Kong',
  'Hong Kong Shue Yan University in Hong Kong, Hong Kong is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$20K - $21K/year',
  19803,
  21946,
  6.1,
  'Jan 10, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  151,
  21,
  39730,
  33.3,
  178,
  'https://www.hksyu.edu'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Qauid-e-Awam University of Engineering Sciences & Technology',
  'Pakistan',
  '🇵🇰',
  'Islamabad',
  'Qauid-e-Awam University of Engineering Sciences & Technology in Islamabad, Pakistan is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $4K/year',
  1789,
  3811,
  5.6,
  'Jul 28, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  325,
  49,
  18734,
  22.7,
  128,
  'https://quest.edu.pk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Education',
  'Pakistan',
  '🇵🇰',
  'Islamabad',
  'Founded in Pakistan, University of Education has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$2K - $3K/year',
  1849,
  2635,
  5.5,
  'Jul 5, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  437,
  70,
  35439,
  16.1,
  181,
  'http://www.ue.edu.pk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Institute of Management Sciences, Peshawar',
  'Pakistan',
  '🇵🇰',
  'Islamabad',
  'Institute of Management Sciences, Peshawar is a prestigious institution in Pakistan known for academic excellence and research innovation. Located in Islamabad, it offers a vibrant campus life and world-class facilities for international students.',
  '$3K - $3K/year',
  2499,
  3765,
  5.5,
  'Jul 16, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  539,
  66,
  19893,
  13.2,
  278,
  'http://www.imsciences.edu.pk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Hahnamann Honoeopathic Medical College',
  'Pakistan',
  '🇵🇰',
  'Islamabad',
  'Hahnamann Honoeopathic Medical College in Islamabad, Pakistan is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $3K/year',
  2420,
  3354,
  5.7,
  'Jul 8, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  650,
  34,
  36200,
  26.9,
  148,
  'http://www.pakistanhomoeopathy.com'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Preston Institute of Management Sciences and Technology (PIMSAT)',
  'Pakistan',
  '🇵🇰',
  'Sindh',
  'Preston Institute of Management Sciences and Technology (PIMSAT) is a prestigious institution in Pakistan known for academic excellence and research innovation. Located in Sindh, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $2K/year',
  1719,
  2619,
  5.8,
  'Jul 26, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  762,
  62,
  16918,
  23.3,
  299,
  'http://www.pimsat-khi.edu.pk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'National University',
  'Bangladesh',
  '🇧🇩',
  'Dhaka',
  'National University is a prestigious institution in Bangladesh known for academic excellence and research innovation. Located in Dhaka, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $2K/year',
  1612,
  2588,
  5.8,
  'May 14, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  504,
  54,
  13781,
  9.2,
  160,
  'http://www.nu.edu.bd'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Khulna University of Engineering And Technology',
  'Bangladesh',
  '🇧🇩',
  'Dhaka',
  'Khulna University of Engineering And Technology in Dhaka, Bangladesh is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $3K/year',
  1976,
  2629,
  5.9,
  'May 28, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  644,
  32,
  13828,
  33.3,
  149,
  'http://www.kuet.ac.bd'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'North East University Bangladesh',
  'Bangladesh',
  '🇧🇩',
  'Dhaka',
  'North East University Bangladesh in Dhaka, Bangladesh is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $2K/year',
  1375,
  2318,
  5.9,
  'May 13, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  779,
  42,
  29204,
  29.9,
  282,
  'http://www.neub.edu.bd'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Information Technology & Sciences',
  'Bangladesh',
  '🇧🇩',
  'Dhaka',
  'University of Information Technology & Sciences in Dhaka, Bangladesh is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $2K/year',
  1067,
  2437,
  5.8,
  'May 4, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  934,
  67,
  31553,
  32,
  203,
  'http://www.uits.edu.bd'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Shahjalal University of Science and Technology',
  'Bangladesh',
  '🇧🇩',
  'Dhaka',
  'Shahjalal University of Science and Technology is a prestigious institution in Bangladesh known for academic excellence and research innovation. Located in Dhaka, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $2K/year',
  1096,
  2866,
  5.8,
  'May 19, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  1045,
  56,
  49384,
  20.5,
  249,
  'http://www.sust.edu'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Tashkent State Agrarian University',
  'Uzbekistan',
  '🇺🇿',
  'Tashkent',
  'Tashkent State Agrarian University in Tashkent, Uzbekistan is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $3K/year',
  2259,
  3755,
  6,
  'Jul 27, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  522,
  63,
  8683,
  14.9,
  140,
  'http://www.agrar.uz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Tashkent Institute of Irrigation and Melioration',
  'Uzbekistan',
  '🇺🇿',
  'Tashkent',
  'Tashkent Institute of Irrigation and Melioration in Tashkent, Uzbekistan is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $3K/year',
  1956,
  3115,
  5.9,
  'Jul 10, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  670,
  43,
  35851,
  7.9,
  206,
  'http://www.tiim.uz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Nukus State Teachers Training Institute',
  'Uzbekistan',
  '🇺🇿',
  'Tashkent',
  'Nukus State Teachers Training Institute is a prestigious institution in Uzbekistan known for academic excellence and research innovation. Located in Tashkent, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $3K/year',
  1465,
  2820,
  5.8,
  'Jul 10, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  806,
  36,
  33055,
  17.8,
  137,
  'http://www.ndpi.uz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Tashkent Automobile and Roads Institute',
  'Uzbekistan',
  '🇺🇿',
  'Tashkent',
  'Tashkent Automobile and Roads Institute in Tashkent, Uzbekistan is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $3K/year',
  1285,
  3966,
  5.5,
  'Jul 27, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  901,
  31,
  22943,
  25.5,
  158,
  'http://www.tayi.uz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Turin Polytechnic University In Tashkent',
  'Uzbekistan',
  '🇺🇿',
  'Tashkent',
  'Turin Polytechnic University In Tashkent is a prestigious institution in Uzbekistan known for academic excellence and research innovation. Located in Tashkent, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $2K/year',
  2344,
  2625,
  5.1,
  'Jul 9, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  1074,
  42,
  16763,
  10.5,
  97,
  'http://www.polito.uz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Abylai Khan University',
  'Kazakhstan',
  '🇰🇿',
  'Almaty',
  'Abylai Khan University is a prestigious institution in Kazakhstan known for academic excellence and research innovation. Located in Almaty, it offers a vibrant campus life and world-class facilities for international students.',
  '$4K - $4K/year',
  3111,
  5129,
  5.7,
  'Jul 9, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  217,
  33,
  44272,
  28.4,
  203,
  'http://www.ablaikhan.kz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Kazak American University',
  'Kazakhstan',
  '🇰🇿',
  'Almaty',
  'Kazak American University is a prestigious institution in Kazakhstan known for academic excellence and research innovation. Located in Almaty, it offers a vibrant campus life and world-class facilities for international students.',
  '$3K - $5K/year',
  2204,
  5289,
  5.5,
  'Jul 9, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  347,
  52,
  9461,
  31.6,
  212,
  'http://www.kau.kz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Western Kazakhstan Agricultural University',
  'Kazakhstan',
  '🇰🇿',
  'Almaty',
  'Western Kazakhstan Agricultural University in Almaty, Kazakhstan is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$4K - $4K/year',
  3509,
  4142,
  5.9,
  'Jul 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  463,
  61,
  49014,
  6.2,
  143,
  'http://www.wkau.kz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Semey State Medical University',
  'Kazakhstan',
  '🇰🇿',
  'Almaty',
  'Founded in Kazakhstan, Semey State Medical University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$4K - $5K/year',
  3718,
  5329,
  5.6,
  'Jul 22, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  556,
  68,
  7014,
  9.6,
  57,
  'http://www.sgma.kz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Pavlodar University',
  'Kazakhstan',
  '🇰🇿',
  'Almaty',
  'Founded in Kazakhstan, Pavlodar University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$4K - $4K/year',
  3360,
  4025,
  5.6,
  'Jul 5, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  679,
  31,
  7032,
  15.1,
  237,
  'http://www.psu.kz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Cambridge',
  'United Kingdom',
  '🇬🇧',
  'Cambridge',
  'Founded in United Kingdom, University of Cambridge has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$29K - $33K/year',
  26288,
  36607,
  6.9,
  'Jan 23, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  19,
  23,
  16308,
  21.4,
  71,
  'http://www.cam.ac.uk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Edinburgh',
  'United Kingdom',
  '🇬🇧',
  'London',
  'Founded in United Kingdom, University of Edinburgh has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$35K - $38K/year',
  30701,
  39738,
  7.4,
  'Jan 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  28,
  17,
  31200,
  8.5,
  82,
  'http://www.ed.ac.uk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Imperial College London',
  'United Kingdom',
  '🇬🇧',
  'London',
  'Imperial College London is a prestigious institution in United Kingdom known for academic excellence and research innovation. Located in London, it offers a vibrant campus life and world-class facilities for international students.',
  '$34K - $37K/year',
  32381,
  37142,
  7.4,
  'Jan 9, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  25,
  20,
  29007,
  12,
  127,
  'http://www.imperial.ac.uk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Oxford',
  'United Kingdom',
  '🇬🇧',
  'Oxford',
  'University of Oxford in Oxford, United Kingdom is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$26K - $31K/year',
  23521,
  36323,
  7.1,
  'Jan 18, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  72,
  25,
  11149,
  20.3,
  284,
  'http://www.ox.ac.uk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University College London, University of London',
  'United Kingdom',
  '🇬🇧',
  'London',
  'University College London, University of London in London, United Kingdom is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$33K - $37K/year',
  27490,
  38045,
  7.2,
  'Jan 25, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  64,
  39,
  57133,
  7.2,
  79,
  'http://www.ucl.ac.uk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Trinity College Bristol',
  'United Kingdom',
  '🇬🇧',
  'Bristol',
  'Founded in United Kingdom, Trinity College Bristol has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$30K - $36K/year',
  28573,
  39707,
  6.7,
  'Jan 10, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  65,
  25,
  9055,
  29.8,
  146,
  'https://www.trinitycollegebristol.ac.uk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Birmingham',
  'United Kingdom',
  '🇬🇧',
  'London',
  'University of Birmingham in London, United Kingdom is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$29K - $34K/year',
  23755,
  39321,
  7.1,
  'Jan 20, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  111,
  40,
  31422,
  11.7,
  87,
  'http://www.bham.ac.uk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Liverpool',
  'United Kingdom',
  '🇬🇧',
  'London',
  'University of Liverpool is a prestigious institution in United Kingdom known for academic excellence and research innovation. Located in London, it offers a vibrant campus life and world-class facilities for international students.',
  '$21K - $32K/year',
  20536,
  39558,
  6.5,
  'Jan 10, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  117,
  17,
  10573,
  6.2,
  201,
  'http://www.liv.ac.uk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Liverpool John Moores University',
  'United Kingdom',
  '🇬🇧',
  'London',
  'Founded in United Kingdom, Liverpool John Moores University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$30K - $37K/year',
  28796,
  38709,
  7.3,
  'Jan 7, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  155,
  12,
  49296,
  22.6,
  63,
  'https://www.ljmu.ac.uk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Glasgow Caledonian University',
  'United Kingdom',
  '🇬🇧',
  'London',
  'Glasgow Caledonian University in London, United Kingdom is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$31K - $35K/year',
  29682,
  36418,
  6.8,
  'Jan 16, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  143,
  12,
  41882,
  13,
  151,
  'http://www.gcal.ac.uk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Newcastle University',
  'United Kingdom',
  '🇬🇧',
  'London',
  'Newcastle University is a prestigious institution in United Kingdom known for academic excellence and research innovation. Located in London, it offers a vibrant campus life and world-class facilities for international students.',
  '$33K - $35K/year',
  29518,
  36283,
  6.6,
  'Jan 25, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  185,
  37,
  23294,
  18.1,
  185,
  'https://www.ncl.ac.uk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'London Guildhall University',
  'United Kingdom',
  '🇬🇧',
  'London',
  'Founded in United Kingdom, London Guildhall University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$28K - $32K/year',
  26444,
  32926,
  7.2,
  'Jan 17, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  196,
  29,
  31545,
  26.6,
  68,
  'http://www.lgu.ac.uk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Middlesex University - London',
  'United Kingdom',
  '🇬🇧',
  'London',
  'Middlesex University - London is a prestigious institution in United Kingdom known for academic excellence and research innovation. Located in London, it offers a vibrant campus life and world-class facilities for international students.',
  '$28K - $42K/year',
  25385,
  42590,
  7.4,
  'Jan 28, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  193,
  39,
  11212,
  31,
  144,
  'https://www.mdx.ac.uk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Loughborough University',
  'United Kingdom',
  '🇬🇧',
  'London',
  'Loughborough University in London, United Kingdom is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$30K - $44K/year',
  21648,
  44124,
  6.8,
  'Jan 9, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  207,
  15,
  13255,
  6.2,
  264,
  'http://www.lboro.ac.uk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'ifs University College',
  'United Kingdom',
  '🇬🇧',
  'London',
  'ifs University College is a prestigious institution in United Kingdom known for academic excellence and research innovation. Located in London, it offers a vibrant campus life and world-class facilities for international students.',
  '$30K - $31K/year',
  27963,
  33738,
  7.3,
  'Jan 21, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  231,
  40,
  13372,
  32.1,
  205,
  'http://www.ifslearning.ac.uk'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Hochschule Neu-Ulm, Hochschule Neu-Ulm University of applied sciences',
  'Germany',
  '🇩🇪',
  'Berlin',
  'Hochschule Neu-Ulm, Hochschule Neu-Ulm University of applied sciences is a prestigious institution in Germany known for academic excellence and research innovation. Located in Berlin, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $3K/year',
  785,
  4214,
  6.1,
  'Jul 14, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  34,
  35,
  34611,
  30,
  112,
  'http://www.hs-neu-ulm.de'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Schiller International University, Heidelberg',
  'Germany',
  '🇩🇪',
  'Berlin',
  'Founded in Germany, Schiller International University, Heidelberg has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$553 - $4,329/year',
  33,
  4383,
  6.1,
  'Jul 13, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  75,
  36,
  53517,
  31.5,
  294,
  'http://www.siu-heidelberg.de'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'SRH University of Applied Sciences',
  'Germany',
  '🇩🇪',
  'Berlin',
  'SRH University of Applied Sciences in Berlin, Germany is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$554 - $2,172/year',
  163,
  3890,
  6.1,
  'Jul 17, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  54,
  62,
  52311,
  8.5,
  262,
  'http://www.srh-berlin.de'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'International School of New Media, University of Lübeck',
  'Germany',
  '🇩🇪',
  'Berlin',
  'International School of New Media, University of Lübeck is a prestigious institution in Germany known for academic excellence and research innovation. Located in Berlin, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $4K/year',
  1184,
  4919,
  6.3,
  'Jul 9, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  123,
  68,
  10610,
  6.3,
  133,
  'http://www.isnm.de'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Westphalian University of Applied Sciences',
  'Germany',
  '🇩🇪',
  'Nordrhein-Westfalen',
  'Westphalian University of Applied Sciences in Nordrhein-Westfalen, Germany is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $3K/year',
  1852,
  3439,
  6.3,
  'Jul 23, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  135,
  36,
  20639,
  12.5,
  70,
  'https://www.w-hs.de'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Jacobs University Bremen',
  'Germany',
  '🇩🇪',
  'Berlin',
  'Jacobs University Bremen is a prestigious institution in Germany known for academic excellence and research innovation. Located in Berlin, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $2K/year',
  1191,
  2609,
  6.2,
  'Jul 24, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  139,
  67,
  8678,
  34.8,
  211,
  'http://www.jacobs-university.de'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Hamburg University of Applied Sciences (HAW Hamburg)',
  'Germany',
  '🇩🇪',
  'Berlin',
  'Hamburg University of Applied Sciences (HAW Hamburg) is a prestigious institution in Germany known for academic excellence and research innovation. Located in Berlin, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $3K/year',
  1769,
  3298,
  6.2,
  'Jul 25, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  190,
  39,
  21204,
  9.8,
  78,
  'https://haw-hamburg.de'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Rosenheim University of Applied Sciences',
  'Germany',
  '🇩🇪',
  'Bavaria',
  'Founded in Germany, Rosenheim University of Applied Sciences has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$3K - $4K/year',
  1559,
  4985,
  6.4,
  'Jul 21, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  210,
  32,
  56228,
  22.8,
  244,
  'https://th-rosenheim.de'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Hochschule Mittweida, University of Applied Sciences',
  'Germany',
  '🇩🇪',
  'Berlin',
  'Hochschule Mittweida, University of Applied Sciences is a prestigious institution in Germany known for academic excellence and research innovation. Located in Berlin, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $4K/year',
  959,
  4381,
  6.3,
  'Jul 4, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  185,
  47,
  28305,
  18.2,
  146,
  'http://www.htwm.de'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'International University in Germany',
  'Germany',
  '🇩🇪',
  'Berlin',
  'International University in Germany is a prestigious institution in Germany known for academic excellence and research innovation. Located in Berlin, it offers a vibrant campus life and world-class facilities for international students.',
  '$1K - $2K/year',
  1312,
  3205,
  6.3,
  'Jul 17, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  235,
  53,
  40510,
  15.8,
  70,
  'http://www.i-u.de'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Technical University of Applied Sciences Augsburg',
  'Germany',
  '🇩🇪',
  'Berlin',
  'Founded in Germany, Technical University of Applied Sciences Augsburg has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$2K - $3K/year',
  2307,
  2544,
  6.4,
  'Jul 7, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  266,
  44,
  58741,
  8.4,
  162,
  'https://www.tha.de'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'European College of Liberal Arts',
  'Germany',
  '🇩🇪',
  'Berlin',
  'European College of Liberal Arts is a prestigious institution in Germany known for academic excellence and research innovation. Located in Berlin, it offers a vibrant campus life and world-class facilities for international students.',
  '$1K - $2K/year',
  1142,
  2913,
  6.4,
  'Jul 21, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  297,
  54,
  35463,
  23,
  55,
  'http://www.ecla.de'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'École Polytechnique',
  'France',
  '🇫🇷',
  'Paris',
  'École Polytechnique in Paris, France is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$7K - $11K/year',
  4556,
  13063,
  6.5,
  'Mar 23, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  25,
  32,
  41634,
  27,
  142,
  'http://www.polytechnique.fr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'National Institute of Applied Sciences of Toulouse',
  'France',
  '🇫🇷',
  'Paris',
  'National Institute of Applied Sciences of Toulouse in Paris, France is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$8K - $10K/year',
  6317,
  10414,
  6.8,
  'Mar 22, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  87,
  34,
  28311,
  29.3,
  249,
  'https://insa-toulouse.fr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Institute Français de la Mode',
  'France',
  '🇫🇷',
  'Paris',
  'Founded in France, Institute Français de la Mode has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$7K - $13K/year',
  2163,
  14398,
  7,
  'Mar 22, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  102,
  27,
  58643,
  30.3,
  232,
  'https://www.ifmparis.fr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'American University of Paris',
  'France',
  '🇫🇷',
  'Paris',
  'American University of Paris is a prestigious institution in France known for academic excellence and research innovation. Located in Paris, it offers a vibrant campus life and world-class facilities for international students.',
  '$3K - $7K/year',
  2561,
  8005,
  6.2,
  'Mar 28, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  156,
  39,
  35533,
  20.3,
  236,
  'http://www.aup.fr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Burgundy',
  'France',
  '🇫🇷',
  'Paris',
  'Founded in France, University of Burgundy has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$9K - $12K/year',
  7106,
  13277,
  6.2,
  'Mar 14, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  168,
  38,
  41925,
  15.5,
  286,
  'https://u-bourgogne.fr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Schiller International University, Paris',
  'France',
  '🇫🇷',
  'Paris',
  'Founded in France, Schiller International University, Paris has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$3K - $12K/year',
  2646,
  14142,
  7,
  'Mar 21, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  209,
  39,
  25472,
  6.7,
  166,
  'http://www.schillerparis.com'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Schiller International University, Strasbourg',
  'France',
  '🇫🇷',
  'Paris',
  'Founded in France, Schiller International University, Strasbourg has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $7K/year',
  4961,
  8296,
  6.5,
  'Mar 23, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  284,
  39,
  49701,
  26.1,
  230,
  'http://www.schillerstrasbourg.com'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'IMT Atlantique',
  'France',
  '🇫🇷',
  'Paris',
  'IMT Atlantique in Paris, France is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$6K - $9K/year',
  4561,
  8796,
  6.8,
  'Mar 2, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  291,
  21,
  42546,
  12.7,
  133,
  'https://www.imt-atlantique.fr'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Delft University of Technology',
  'Netherlands',
  '🇳🇱',
  'Amsterdam',
  'Delft University of Technology in Amsterdam, Netherlands is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$14K - $17K/year',
  10844,
  17803,
  6.1,
  'Apr 4, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  50,
  49,
  34510,
  17.5,
  296,
  'http://www.tudelft.nl'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Amsterdam',
  'Netherlands',
  '🇳🇱',
  'Amsterdam',
  'University of Amsterdam is a prestigious institution in Netherlands known for academic excellence and research innovation. Located in Amsterdam, it offers a vibrant campus life and world-class facilities for international students.',
  '$14K - $15K/year',
  12845,
  16282,
  6.7,
  'Apr 19, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  97,
  51,
  22194,
  30.3,
  277,
  'http://www.uva.nl'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'European Leadership University',
  'Netherlands',
  '🇳🇱',
  'Amsterdam',
  'European Leadership University in Amsterdam, Netherlands is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$13K - $16K/year',
  8502,
  19244,
  6.4,
  'Apr 14, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  154,
  74,
  34639,
  20.1,
  95,
  'https://amsterdam.tech'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Sint Eustatius School of Medicine',
  'Netherlands',
  '🇳🇱',
  'Amsterdam',
  'University of Sint Eustatius School of Medicine is a prestigious institution in Netherlands known for academic excellence and research innovation. Located in Amsterdam, it offers a vibrant campus life and world-class facilities for international students.',
  '$13K - $16K/year',
  9932,
  17101,
  6.4,
  'Apr 20, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  173,
  66,
  42833,
  21.5,
  232,
  'http://www.eustatiusmed.edu'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'International University School of Medicine (IUSOM)',
  'Netherlands',
  '🇳🇱',
  'Amsterdam',
  'Founded in Netherlands, International University School of Medicine (IUSOM) has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$15K - $17K/year',
  13163,
  17082,
  6.6,
  'Apr 22, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  181,
  57,
  37339,
  33.4,
  161,
  'http://www.internationaluniversity-schoolofmedicine.org'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'EPFL - EPF Lausanne',
  'Switzerland',
  '🇨🇭',
  'Zurich',
  'EPFL - EPF Lausanne in Zurich, Switzerland is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$5K - $8K/year',
  3506,
  9218,
  6.5,
  'Dec 13, 2025',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  29,
  29,
  7203,
  24.9,
  141,
  'http://www.epfl.ch'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'ETHZ - ETH Zurich',
  'Switzerland',
  '🇨🇭',
  'Zurich',
  'ETHZ - ETH Zurich is a prestigious institution in Switzerland known for academic excellence and research innovation. Located in Zurich, it offers a vibrant campus life and world-class facilities for international students.',
  '$7K - $11K/year',
  5946,
  11570,
  6.7,
  'Dec 22, 2025',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  5,
  29,
  38228,
  20,
  252,
  'http://www.ethz.ch'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Schiller International University, American College of Switzerland',
  'Switzerland',
  '🇨🇭',
  'Zurich',
  'Founded in Switzerland, Schiller International University, American College of Switzerland has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$6K - $12K/year',
  4671,
  11854,
  6.9,
  'Dec 17, 2025',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  70,
  34,
  10871,
  6.7,
  141,
  'http://www.american-college.com'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'PHSZ - University of Teacher Education Schwyz',
  'Switzerland',
  '🇨🇭',
  'Zurich',
  'PHSZ - University of Teacher Education Schwyz is a prestigious institution in Switzerland known for academic excellence and research innovation. Located in Zurich, it offers a vibrant campus life and world-class facilities for international students.',
  '$6K - $8K/year',
  4958,
  10999,
  6.8,
  'Dec 3, 2025',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  72,
  21,
  33552,
  21.4,
  195,
  'http://www.phsz.ch'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Applied Sciences Aargau',
  'Switzerland',
  '🇨🇭',
  'Zurich',
  'University of Applied Sciences Aargau in Zurich, Switzerland is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$7K - $9K/year',
  6808,
  10097,
  6.8,
  'Dec 16, 2025',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  111,
  23,
  59611,
  17.4,
  146,
  'http://www.fh-aargau.ch'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Bologna',
  'Italy',
  '🇮🇹',
  'Milan',
  'University of Bologna in Milan, Italy is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $4K/year',
  2475,
  4697,
  6.1,
  'Apr 4, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  100,
  49,
  27136,
  32.6,
  161,
  'http://www.unibo.it'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Catania',
  'Italy',
  '🇮🇹',
  'Milan',
  'Founded in Italy, University of Catania has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$3K - $4K/year',
  1963,
  3826,
  5.7,
  'Apr 7, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  181,
  53,
  27925,
  27.2,
  203,
  'http://www.unict.it'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Campus Bio-Medico University of Rome',
  'Italy',
  '🇮🇹',
  'Milan',
  'Campus Bio-Medico University of Rome is a prestigious institution in Italy known for academic excellence and research innovation. Located in Milan, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $3K/year',
  1298,
  4478,
  5.9,
  'Apr 6, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  274,
  80,
  13116,
  7.5,
  196,
  'http://www.unicampus.it'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Ferrara',
  'Italy',
  '🇮🇹',
  'Milan',
  'University of Ferrara is a prestigious institution in Italy known for academic excellence and research innovation. Located in Milan, it offers a vibrant campus life and world-class facilities for international students.',
  '$3K - $4K/year',
  2475,
  4168,
  6,
  'Apr 8, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  359,
  63,
  52855,
  11,
  183,
  'http://www.unife.it'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Free University Institute "Carlo Cattaneo"',
  'Italy',
  '🇮🇹',
  'Milan',
  'Founded in Italy, Free University Institute "Carlo Cattaneo" has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$2K - $4K/year',
  1831,
  4205,
  5.8,
  'Apr 18, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  391,
  63,
  35037,
  5.2,
  277,
  'http://www.liuc.it'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Malmö University College',
  'Sweden',
  '🇸🇪',
  'Stockholm',
  'Malmö University College is a prestigious institution in Sweden known for academic excellence and research innovation. Located in Stockholm, it offers a vibrant campus life and world-class facilities for international students.',
  '$12K - $17K/year',
  11822,
  18798,
  7,
  'Jan 16, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  60,
  42,
  50402,
  32.1,
  279,
  'http://www.mah.se'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Jönköping University College',
  'Sweden',
  '🇸🇪',
  'Stockholm',
  'Founded in Sweden, Jönköping University College has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$14K - $16K/year',
  12337,
  18328,
  6.8,
  'Jan 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  91,
  59,
  51867,
  10.9,
  137,
  'http://www.hj.se'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Stockholm Institute of Education',
  'Sweden',
  '🇸🇪',
  'Stockholm',
  'Stockholm Institute of Education in Stockholm, Sweden is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$13K - $17K/year',
  10999,
  19033,
  6.6,
  'Jan 16, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  199,
  36,
  16894,
  21.7,
  231,
  'http://www.lhs.se'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University College of Gävle',
  'Sweden',
  '🇸🇪',
  'Stockholm',
  'Founded in Sweden, University College of Gävle has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$15K - $17K/year',
  13394,
  16768,
  6.5,
  'Jan 8, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  253,
  47,
  24165,
  26.8,
  196,
  'http://www.hig.se'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Masaryk University',
  'Czech Republic',
  '🇨🇿',
  'Prague',
  'Masaryk University in Prague, Czech Republic is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $5K/year',
  2734,
  5227,
  5.8,
  'Mar 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  200,
  72,
  39702,
  10.1,
  295,
  'https://www.muni.cz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Education Hradec Kralove',
  'Czech Republic',
  '🇨🇿',
  'Prague',
  'University of Education Hradec Kralove is a prestigious institution in Czech Republic known for academic excellence and research innovation. Located in Prague, it offers a vibrant campus life and world-class facilities for international students.',
  '$4K - $5K/year',
  2835,
  5905,
  6,
  'Mar 25, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  317,
  70,
  34678,
  31,
  287,
  'http://www.vsp.cz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Pardubice',
  'Czech Republic',
  '🇨🇿',
  'Prague',
  'University of Pardubice in Prague, Czech Republic is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $4K/year',
  2399,
  5238,
  6.3,
  'Mar 14, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  399,
  64,
  37797,
  19.9,
  226,
  'http://www.upce.cz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Czech University of Agriculture Prague',
  'Czech Republic',
  '🇨🇿',
  'Prague',
  'Czech University of Agriculture Prague in Prague, Czech Republic is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$4K - $5K/year',
  3328,
  6619,
  5.7,
  'Mar 23, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  488,
  59,
  13547,
  21,
  86,
  'http://www.czu.cz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Agricultural University of Wroclaw',
  'Poland',
  '🇵🇱',
  'Warsaw',
  'Agricultural University of Wroclaw in Warsaw, Poland is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$4K - $4K/year',
  3081,
  4578,
  5.5,
  'Jun 2, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  208,
  58,
  52747,
  12.9,
  117,
  'http://www.ar.wroc.pl'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Technical University of Bialystok',
  'Poland',
  '🇵🇱',
  'Warsaw',
  'Technical University of Bialystok is a prestigious institution in Poland known for academic excellence and research innovation. Located in Warsaw, it offers a vibrant campus life and world-class facilities for international students.',
  '$3K - $4K/year',
  2161,
  5529,
  5.9,
  'Jun 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  331,
  61,
  41646,
  15.4,
  258,
  'http://www.pb.bialystok.pl'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Agricultural University of Cracow',
  'Poland',
  '🇵🇱',
  'Warsaw',
  'Founded in Poland, Agricultural University of Cracow has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$4K - $4K/year',
  3500,
  4005,
  5.6,
  'Jun 21, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  423,
  61,
  25482,
  34.7,
  266,
  'http://www.ar.krakow.pl'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Technical University of Kielce',
  'Poland',
  '🇵🇱',
  'Warsaw',
  'Technical University of Kielce in Warsaw, Poland is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$4K - $5K/year',
  3633,
  4790,
  5.8,
  'Jun 12, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  569,
  73,
  48663,
  8.3,
  232,
  'http://www.tu.kielce.pl'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Pannonia',
  'Hungary',
  '🇭🇺',
  'Budapest',
  'University of Pannonia is a prestigious institution in Hungary known for academic excellence and research innovation. Located in Budapest, it offers a vibrant campus life and world-class facilities for international students.',
  '$5K - $6K/year',
  4948,
  5991,
  6.1,
  'Feb 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  200,
  54,
  45833,
  13.9,
  88,
  'http://www.uni-pannon.hu'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Kossuth Lajos University',
  'Hungary',
  '🇭🇺',
  'Budapest',
  'Kossuth Lajos University is a prestigious institution in Hungary known for academic excellence and research innovation. Located in Budapest, it offers a vibrant campus life and world-class facilities for international students.',
  '$4K - $6K/year',
  3256,
  7228,
  6,
  'Feb 14, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  333,
  59,
  54728,
  17.6,
  274,
  'http://www.lib.klte.hu'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Pecs',
  'Hungary',
  '🇭🇺',
  'Budapest',
  'University of Pecs is a prestigious institution in Hungary known for academic excellence and research innovation. Located in Budapest, it offers a vibrant campus life and world-class facilities for international students.',
  '$4K - $6K/year',
  3423,
  7197,
  5.7,
  'Feb 16, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  462,
  79,
  54967,
  32.5,
  172,
  'http://www.pte.hu'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Public Service',
  'Hungary',
  '🇭🇺',
  'Budapest',
  'University of Public Service is a prestigious institution in Hungary known for academic excellence and research innovation. Located in Budapest, it offers a vibrant campus life and world-class facilities for international students.',
  '$4K - $5K/year',
  3558,
  5433,
  5.7,
  'Feb 13, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  574,
  45,
  36543,
  27.3,
  116,
  'https://www.uni-nke.hu'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Moscow University',
  'Russia',
  '🇷🇺',
  'Moscow',
  'Moscow University is a prestigious institution in Russia known for academic excellence and research innovation. Located in Moscow, it offers a vibrant campus life and world-class facilities for international students.',
  '$4K - $6K/year',
  4069,
  6686,
  6.3,
  'Jul 8, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  80,
  67,
  18552,
  19.1,
  103,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Moscow University 2',
  'Russia',
  '🇷🇺',
  'Moscow',
  'Moscow University 2 in Moscow, Russia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$6K - $7K/year',
  4980,
  7107,
  5.9,
  'Jul 16, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  156,
  60,
  57461,
  14.8,
  60,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Moscow University 3',
  'Russia',
  '🇷🇺',
  'Moscow',
  'Founded in Russia, Moscow University 3 has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$2K - $4K/year',
  2122,
  5654,
  6,
  'Jul 22, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  317,
  59,
  47381,
  6.6,
  57,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Moscow University 4',
  'Russia',
  '🇷🇺',
  'Moscow',
  'Moscow University 4 is a prestigious institution in Russia known for academic excellence and research innovation. Located in Moscow, it offers a vibrant campus life and world-class facilities for international students.',
  '$4K - $4K/year',
  2498,
  5217,
  5.9,
  'Jul 12, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  372,
  45,
  15214,
  16.5,
  138,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Moscow University 5',
  'Russia',
  '🇷🇺',
  'Moscow',
  'Founded in Russia, Moscow University 5 has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$5K - $5K/year',
  4778,
  5726,
  6.5,
  'Jul 10, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  471,
  41,
  9421,
  33.5,
  249,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Massachusetts Institute of Technology',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Founded in United States, MIT has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$42K - $48K/year',
  36072,
  51141,
  6.9,
  'Jan 5, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  15,
  43,
  54138,
  16.6,
  278,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Stanford University',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Founded in United States, Stanford University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$33K - $46K/year',
  30356,
  47370,
  7.4,
  'Jan 4, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  20,
  45,
  34041,
  11.8,
  153,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Harvard University',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Harvard University is a prestigious institution in United States known for academic excellence and research innovation. Located in Cambridge, it offers a vibrant campus life and world-class facilities for international students.',
  '$45K - $49K/year',
  44386,
  50357,
  7.4,
  'Jan 9, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  5,
  8,
  55663,
  21.6,
  204,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'California Institute of Technology',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Founded in United States, Caltech has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$41K - $49K/year',
  30705,
  57699,
  7.2,
  'Jan 9, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  39,
  39,
  57847,
  30.1,
  205,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Chicago',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Founded in United States, University of Chicago has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$48K - $56K/year',
  44186,
  55900,
  7.3,
  'Jan 23, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  46,
  21,
  27701,
  5.1,
  168,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Princeton University',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Founded in United States, Princeton University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$45K - $52K/year',
  43188,
  55881,
  6.9,
  'Jan 9, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  29,
  29,
  42646,
  7.4,
  151,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Columbia University',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Columbia University in Cambridge, United States is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$40K - $45K/year',
  32798,
  49209,
  7.2,
  'Jan 13, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  89,
  41,
  37109,
  7.1,
  111,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Yale University',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Yale University in Cambridge, United States is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$44K - $53K/year',
  42697,
  56765,
  7.3,
  'Jan 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  65,
  33,
  14688,
  29.7,
  70,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Pennsylvania',
  'United States',
  '🇺🇸',
  'Cambridge',
  'University of Pennsylvania in Cambridge, United States is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$39K - $54K/year',
  37992,
  58858,
  6.5,
  'Jan 5, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  107,
  40,
  30441,
  24.2,
  158,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Johns Hopkins University',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Founded in United States, Johns Hopkins University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$45K - $50K/year',
  41447,
  55291,
  6.7,
  'Jan 26, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  119,
  10,
  30422,
  12.6,
  251,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Duke University',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Duke University is a prestigious institution in United States known for academic excellence and research innovation. Located in Cambridge, it offers a vibrant campus life and world-class facilities for international students.',
  '$39K - $51K/year',
  33814,
  52214,
  7.2,
  'Jan 5, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  126,
  44,
  19612,
  26.5,
  208,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Northwestern University',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Northwestern University is a prestigious institution in United States known for academic excellence and research innovation. Located in Cambridge, it offers a vibrant campus life and world-class facilities for international students.',
  '$35K - $43K/year',
  33654,
  49453,
  6.5,
  'Jan 6, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  103,
  48,
  50094,
  28,
  248,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Cornell University',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Founded in United States, Cornell University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$41K - $49K/year',
  32195,
  51887,
  7.2,
  'Jan 26, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  123,
  37,
  32822,
  10.3,
  158,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of California, Berkeley',
  'United States',
  '🇺🇸',
  'Cambridge',
  'UC Berkeley in Cambridge, United States is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$38K - $49K/year',
  30564,
  51206,
  6.7,
  'Jan 17, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  157,
  50,
  41926,
  28.9,
  67,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of California, Los Angeles',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Founded in United States, UCLA has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$43K - $52K/year',
  42995,
  57973,
  6.8,
  'Jan 6, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  131,
  48,
  47873,
  31,
  91,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Michigan',
  'United States',
  '🇺🇸',
  'Cambridge',
  'University of Michigan is a prestigious institution in United States known for academic excellence and research innovation. Located in Cambridge, it offers a vibrant campus life and world-class facilities for international students.',
  '$36K - $52K/year',
  32126,
  53218,
  7.4,
  'Jan 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  170,
  26,
  59537,
  11.6,
  63,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'New York University',
  'United States',
  '🇺🇸',
  'Cambridge',
  'NYU in Cambridge, United States is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$43K - $44K/year',
  41344,
  46623,
  6.7,
  'Jan 19, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  161,
  35,
  59630,
  25.8,
  181,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Carnegie Mellon University',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Founded in United States, Carnegie Mellon has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$43K - $57K/year',
  35090,
  59186,
  6.9,
  'Jan 4, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  150,
  24,
  21809,
  25.6,
  97,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Washington',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Founded in United States, University of Washington has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$40K - $48K/year',
  30779,
  50467,
  7.2,
  'Jan 27, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  158,
  27,
  30502,
  28.2,
  290,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Georgia Institute of Technology',
  'United States',
  '🇺🇸',
  'Cambridge',
  'Georgia Tech is a prestigious institution in United States known for academic excellence and research innovation. Located in Cambridge, it offers a vibrant campus life and world-class facilities for international students.',
  '$41K - $49K/year',
  37967,
  49196,
  6.9,
  'Jan 6, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  198,
  43,
  13897,
  6.1,
  188,
  NULL
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'McGill University',
  'Canada',
  '🇨🇦',
  'Montreal',
  'McGill University in Montreal, Canada is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$24K - $26K/year',
  22521,
  27760,
  6.7,
  'Jan 19, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  20,
  28,
  7586,
  5.9,
  225,
  'http://www.mcgill.ca'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'École Polytechnique de Montréal, Université de Montréal',
  'Canada',
  '🇨🇦',
  'Quebec',
  'Founded in Canada, École Polytechnique de Montréal, Université de Montréal has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$26K - $30K/year',
  21569,
  31614,
  6.7,
  'Jan 5, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  28,
  47,
  19017,
  6.7,
  116,
  'http://www.polymtl.ca'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Toronto, Scarborough',
  'Canada',
  '🇨🇦',
  'Ontario',
  'University of Toronto, Scarborough is a prestigious institution in Canada known for academic excellence and research innovation. Located in Ontario, it offers a vibrant campus life and world-class facilities for international students.',
  '$23K - $30K/year',
  16289,
  30440,
  6.9,
  'Jan 5, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  45,
  58,
  38934,
  32.8,
  248,
  'http://www.scar.utoronto.ca'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of British Columbia',
  'Canada',
  '🇨🇦',
  'Vancouver',
  'Founded in Canada, University of British Columbia has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$18K - $24K/year',
  15996,
  29415,
  6.5,
  'Jan 21, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  105,
  24,
  30056,
  15.2,
  115,
  'http://www.ubc.ca'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Toronto, Mississauga',
  'Canada',
  '🇨🇦',
  'Ontario',
  'University of Toronto, Mississauga is a prestigious institution in Canada known for academic excellence and research innovation. Located in Ontario, it offers a vibrant campus life and world-class facilities for international students.',
  '$20K - $24K/year',
  19139,
  25034,
  6.7,
  'Jan 20, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  141,
  20,
  45342,
  13.9,
  245,
  'http://www.utm.utoronto.ca'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Toronto',
  'Canada',
  '🇨🇦',
  'Ontario',
  'University of Toronto in Ontario, Canada is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$25K - $29K/year',
  21167,
  31634,
  6.7,
  'Jan 11, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  159,
  36,
  36186,
  15.3,
  143,
  'http://www.utoronto.ca'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Victoria University Toronto, University of Toronto',
  'Canada',
  '🇨🇦',
  'Ontario',
  'Victoria University Toronto, University of Toronto is a prestigious institution in Canada known for academic excellence and research innovation. Located in Ontario, it offers a vibrant campus life and world-class facilities for international students.',
  '$23K - $30K/year',
  22114,
  31931,
  6.5,
  'Jan 27, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  182,
  22,
  33552,
  24.3,
  110,
  'http://vicu.utoronto.ca'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'St. Anne University',
  'Canada',
  '🇨🇦',
  'Toronto',
  'St. Anne University in Toronto, Canada is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$21K - $31K/year',
  16983,
  34415,
  6.6,
  'Jan 7, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  178,
  46,
  13329,
  25.1,
  84,
  'http://www.ustanne.ednet.ns.ca'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Yukon College',
  'Canada',
  '🇨🇦',
  'Yukon',
  'Founded in Canada, Yukon College has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$25K - $25K/year',
  24729,
  25590,
  6.8,
  'Jan 25, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  178,
  43,
  23184,
  24.8,
  78,
  'http://www.yukoncollege.yk.ca'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Lethbridge College',
  'Canada',
  '🇨🇦',
  'Alberta',
  'Founded in Canada, Lethbridge College has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$25K - $27K/year',
  24105,
  27523,
  6.7,
  'Jan 5, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  216,
  60,
  46322,
  17.6,
  277,
  'https://lethbridgecollege.ca'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Trinity Western University',
  'Canada',
  '🇨🇦',
  'British Columbia',
  'Trinity Western University is a prestigious institution in Canada known for academic excellence and research innovation. Located in British Columbia, it offers a vibrant campus life and world-class facilities for international students.',
  '$18K - $24K/year',
  16360,
  25527,
  6.7,
  'Jan 15, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  245,
  31,
  16140,
  21.9,
  199,
  'http://www.twu.ca'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'St. Francis Xavier University',
  'Canada',
  '🇨🇦',
  'Toronto',
  'Founded in Canada, St. Francis Xavier University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$23K - $28K/year',
  17343,
  30552,
  6.5,
  'Jan 5, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  249,
  25,
  55872,
  30.3,
  109,
  'http://www.stfx.ca'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Australian National University',
  'Australia',
  '🇦🇺',
  'Australian Capital Territory',
  'Founded in Australia, Australian National University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$32K - $39K/year',
  23740,
  43027,
  6.8,
  'Oct 14, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  25,
  34,
  50015,
  7.6,
  173,
  'http://www.anu.edu.au'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Melbourne',
  'Australia',
  '🇦🇺',
  'Melbourne',
  'University of Melbourne in Melbourne, Australia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$26K - $39K/year',
  25588,
  41258,
  6.6,
  'Oct 20, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  38,
  32,
  6908,
  18.1,
  170,
  'http://www.unimelb.edu.au'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Sydney',
  'Australia',
  '🇦🇺',
  'Sydney',
  'University of Sydney is a prestigious institution in Australia known for academic excellence and research innovation. Located in Sydney, it offers a vibrant campus life and world-class facilities for international students.',
  '$24K - $34K/year',
  23657,
  35588,
  6.7,
  'Oct 22, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  81,
  35,
  14337,
  9.1,
  74,
  'http://sydney.edu.au'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Batchelor Institute of Indigenous Tertiary Education',
  'Australia',
  '🇦🇺',
  'Northern Territory',
  'Founded in Australia, Batchelor Institute of Indigenous Tertiary Education has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$35K - $41K/year',
  31707,
  41158,
  6.8,
  'Oct 21, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  114,
  22,
  47769,
  34,
  96,
  'http://www.nt.gov.au/batc'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Curtin University',
  'Australia',
  '🇦🇺',
  'Western Australia',
  'Founded in Australia, Curtin University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$30K - $39K/year',
  21289,
  40089,
  6.9,
  'Oct 21, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  111,
  36,
  49446,
  33.3,
  189,
  'http://www.curtin.edu.au'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Western Sydney',
  'Australia',
  '🇦🇺',
  'New South Wales',
  'University of Western Sydney in New South Wales, Australia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$28K - $37K/year',
  25971,
  38921,
  6.8,
  'Oct 2, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  162,
  55,
  30649,
  6.8,
  106,
  'http://www.uws.edu.au'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Edith Cowan University',
  'Australia',
  '🇦🇺',
  'Western Australia',
  'Founded in Australia, Edith Cowan University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$28K - $31K/year',
  24166,
  35875,
  6.8,
  'Oct 14, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  158,
  59,
  40508,
  7.2,
  57,
  'http://www.ecu.edu.au'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Central Queensland University',
  'Australia',
  '🇦🇺',
  'Queensland',
  'Central Queensland University is a prestigious institution in Australia known for academic excellence and research innovation. Located in Queensland, it offers a vibrant campus life and world-class facilities for international students.',
  '$32K - $34K/year',
  30842,
  35770,
  6.7,
  'Oct 8, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  230,
  39,
  34950,
  5.9,
  113,
  'http://www.cqu.edu.au'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Engineering Institute of Technology',
  'Australia',
  '🇦🇺',
  'Melbourne',
  'Engineering Institute of Technology is a prestigious institution in Australia known for academic excellence and research innovation. Located in Melbourne, it offers a vibrant campus life and world-class facilities for international students.',
  '$26K - $31K/year',
  21965,
  35020,
  6.6,
  'Oct 17, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  237,
  51,
  12175,
  27,
  258,
  'https://www.eit.edu.au'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of New South Wales',
  'Australia',
  '🇦🇺',
  'New South Wales',
  'Founded in Australia, University of New South Wales has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$31K - $33K/year',
  26085,
  39707,
  6.8,
  'Oct 12, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  287,
  54,
  58508,
  10.2,
  110,
  'http://www.unsw.edu.au'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'La Trobe University',
  'Australia',
  '🇦🇺',
  'Victoria',
  'La Trobe University is a prestigious institution in Australia known for academic excellence and research innovation. Located in Victoria, it offers a vibrant campus life and world-class facilities for international students.',
  '$28K - $36K/year',
  25466,
  41905,
  6.6,
  'Oct 15, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  273,
  37,
  13471,
  11.8,
  204,
  'http://www.latrobe.edu.au'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Royal Melbourne Institute of Technology',
  'Australia',
  '🇦🇺',
  'Victoria',
  'Royal Melbourne Institute of Technology in Victoria, Australia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$32K - $34K/year',
  31182,
  35439,
  6.8,
  'Oct 17, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  301,
  41,
  20643,
  7.5,
  247,
  'http://www.rmit.edu.au'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Auckland',
  'New Zealand',
  '🇳🇿',
  'Auckland',
  'University of Auckland in Auckland, New Zealand is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$17K - $26K/year',
  15177,
  29598,
  6.1,
  'Dec 8, 2025',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  60,
  40,
  20192,
  19.2,
  246,
  'http://www.auckland.ac.nz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Massey University',
  'New Zealand',
  '🇳🇿',
  'Wellington',
  'Founded in New Zealand, Massey University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$22K - $26K/year',
  17443,
  26769,
  6.1,
  'Dec 26, 2025',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  132,
  52,
  41608,
  6.1,
  54,
  'http://www.massey.ac.nz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Victoria University of Wellington',
  'New Zealand',
  '🇳🇿',
  'Wellington',
  'Founded in New Zealand, Victoria University of Wellington has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$22K - $24K/year',
  20522,
  23662,
  6.1,
  'Dec 25, 2025',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  202,
  77,
  56910,
  17.1,
  165,
  'http://www.vuw.ac.nz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Lincoln University',
  'New Zealand',
  '🇳🇿',
  'Canterbury',
  'Lincoln University is a prestigious institution in New Zealand known for academic excellence and research innovation. Located in Canterbury, it offers a vibrant campus life and world-class facilities for international students.',
  '$25K - $30K/year',
  21070,
  29662,
  6.5,
  'Dec 21, 2025',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  293,
  76,
  20838,
  31.2,
  176,
  'http://www.lincoln.ac.nz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Christchurch Polytechnic Institute of Technology',
  'New Zealand',
  '🇳🇿',
  'Canterbury',
  'Christchurch Polytechnic Institute of Technology is a prestigious institution in New Zealand known for academic excellence and research innovation. Located in Canterbury, it offers a vibrant campus life and world-class facilities for international students.',
  '$22K - $24K/year',
  21321,
  25287,
  6.3,
  'Dec 7, 2025',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  308,
  67,
  11260,
  31.9,
  71,
  'http://www.cpit.ac.nz'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Paris-Sorbonne University Abu Dhabi',
  'United Arab Emirates',
  '🇦🇪',
  'Dubai',
  'Founded in United Arab Emirates, Paris-Sorbonne University Abu Dhabi has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$17K - $20K/year',
  10652,
  23925,
  5.7,
  'Jun 1, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  150,
  56,
  22422,
  6.2,
  127,
  'http://www.sorbonne.ae'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Alhosn University',
  'United Arab Emirates',
  '🇦🇪',
  'Dubai',
  'Founded in United Arab Emirates, Alhosn University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$22K - $26K/year',
  19674,
  27741,
  5.8,
  'Jun 24, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  257,
  33,
  29468,
  29.3,
  112,
  'http://www.alhosnu.ae'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Khalifa University of Science, Technology and Research',
  'United Arab Emirates',
  '🇦🇪',
  'Dubai',
  'Khalifa University of Science, Technology and Research in Dubai, United Arab Emirates is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$19K - $26K/year',
  15064,
  29306,
  6.3,
  'Jun 2, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  336,
  31,
  18728,
  8.9,
  243,
  'http://www.ku.ac.ae'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Alain University of Science and Technology',
  'United Arab Emirates',
  '🇦🇪',
  'Dubai',
  'Alain University of Science and Technology in Dubai, United Arab Emirates is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$19K - $22K/year',
  17501,
  22132,
  6.3,
  'Jun 28, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  394,
  33,
  50259,
  19.2,
  217,
  'http://www.alainuniversity.ac.ae'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'The Petroleum Institute',
  'United Arab Emirates',
  '🇦🇪',
  'Dubai',
  'Founded in United Arab Emirates, The Petroleum Institute has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$18K - $22K/year',
  18123,
  24303,
  5.7,
  'Jun 27, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'medium',
  526,
  34,
  49405,
  19.3,
  152,
  'http://www.pi.ac.ae'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'College of Technology at Dammam',
  'Saudi Arabia',
  '🇸🇦',
  'Dammam',
  'College of Technology at Dammam is a prestigious institution in Saudi Arabia known for academic excellence and research innovation. Located in Dammam, it offers a vibrant campus life and world-class facilities for international students.',
  '$2K - $4K/year',
  1403,
  4554,
  6.2,
  'Mar 20, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  100,
  21,
  55455,
  31.9,
  244,
  'http://www.dct.gotevot.edu.sa'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'College of Technology at Kharj',
  'Saudi Arabia',
  '🇸🇦',
  'Al-Kharj',
  'College of Technology at Kharj in Al-Kharj, Saudi Arabia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $3K/year',
  2483,
  3538,
  5.7,
  'Mar 10, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  174,
  43,
  22544,
  26.3,
  160,
  'http://kct.gotevot.edu.sa'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'University of Dammam',
  'Saudi Arabia',
  '🇸🇦',
  'Dammam',
  'Founded in Saudi Arabia, University of Dammam has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$2K - $3K/year',
  667,
  4373,
  5.9,
  'Mar 20, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  280,
  26,
  25416,
  25.9,
  99,
  'http://www.ud.edu.sa'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'College of Nursing and Allied Health Scinces',
  'Saudi Arabia',
  '🇸🇦',
  'Riyadh',
  'Founded in Saudi Arabia, College of Nursing and Allied Health Scinces has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$745 - $2,362/year',
  681,
  2900,
  6.5,
  'Mar 7, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  350,
  43,
  47483,
  30.3,
  200,
  'http://www.ngha.med.sa'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Arab Open University',
  'Saudi Arabia',
  '🇸🇦',
  'Riyadh',
  'Arab Open University in Riyadh, Saudi Arabia is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$2K - $3K/year',
  2370,
  2751,
  5.9,
  'Mar 2, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'high',
  422,
  38,
  25630,
  5.5,
  113,
  'http://www.arabou.edu.sa'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Tanta University',
  'Egypt',
  '🇪🇬',
  'Cairo',
  'Founded in Egypt, Tanta University has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$5K - $5K/year',
  4978,
  5153,
  5.9,
  'Jul 16, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  300,
  50,
  20079,
  26.2,
  287,
  'http://www.tanta.edu.eg'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Zagazig University',
  'Egypt',
  '🇪🇬',
  'Cairo',
  'Zagazig University in Cairo, Egypt is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $5K/year',
  2115,
  7102,
  5.8,
  'Jul 5, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  418,
  43,
  32684,
  21.2,
  103,
  'http://www.zu.edu.eg'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Modern University For Technology and Information',
  'Egypt',
  '🇪🇬',
  'Cairo',
  'Modern University For Technology and Information is a prestigious institution in Egypt known for academic excellence and research innovation. Located in Cairo, it offers a vibrant campus life and world-class facilities for international students.',
  '$4K - $5K/year',
  3238,
  5366,
  6,
  'Jul 15, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  536,
  40,
  9343,
  32.5,
  296,
  'http://www.mti.edu.eg'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'Pharos International University',
  'Egypt',
  '🇪🇬',
  'Cairo',
  'Pharos International University in Cairo, Egypt is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.',
  '$3K - $4K/year',
  3070,
  5014,
  5.7,
  'Jul 7, 2026',
  false,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  690,
  47,
  24715,
  18.3,
  68,
  'http://www.pua.edu.eg'
);

INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  'CIC - Canadian International College',
  'Egypt',
  '🇪🇬',
  'Cairo',
  'Founded in Egypt, CIC - Canadian International College has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.',
  '$4K - $7K/year',
  3887,
  7438,
  5.7,
  'Jul 21, 2026',
  true,
  'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80',
  'low',
  761,
  44,
  36069,
  25.5,
  103,
  'http://cic-cairo.com'
);

