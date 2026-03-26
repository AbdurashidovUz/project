/**
 * UniSearch — University Data Seed Generator
 * 
 * This script generates a comprehensive SQL seed with 350+ universities.
 * It uses the Hipolabs API for real university names/websites,
 * then enriches them with realistic tuition, IELTS, ranking, and scholarship data
 * based on country-level averages and world rankings.
 * 
 * Usage:
 *   node scripts/generate-seed.mjs
 * 
 * Output: supabase/universities_seed.sql
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));

// ==================== CONFIGURATION ====================

// Country distribution: ~60% Asia, ~40% rest of world
const COUNTRY_CONFIG = {
  // ASIA (~210 universities)
  'Japan':                  { count: 30, flag: '🇯🇵', code: 'JP', tuitionRange: [5000, 15000],  ieltsRange: [5.5, 6.5], acceptanceRange: [30, 80], scholarshipRate: 0.6, deadlineMonth: 'January', location: 'Tokyo' },
  'Korea, Republic of':     { count: 25, flag: '🇰🇷', code: 'KR', tuitionRange: [4000, 12000],  ieltsRange: [5.5, 6.5], acceptanceRange: [20, 70], scholarshipRate: 0.7, deadlineMonth: 'March', location: 'Seoul' },
  'China':                  { count: 25, flag: '🇨🇳', code: 'CN', tuitionRange: [3000, 10000],  ieltsRange: [5.5, 6.5], acceptanceRange: [15, 60], scholarshipRate: 0.8, deadlineMonth: 'March', location: 'Beijing' },
  'Malaysia':               { count: 20, flag: '🇲🇾', code: 'MY', tuitionRange: [3000, 8000],   ieltsRange: [5.5, 6.0], acceptanceRange: [40, 85], scholarshipRate: 0.5, deadlineMonth: 'April', location: 'Kuala Lumpur' },
  'Singapore':              { count: 8,  flag: '🇸🇬', code: 'SG', tuitionRange: [15000, 40000], ieltsRange: [6.5, 7.0], acceptanceRange: [5, 25],  scholarshipRate: 0.7, deadlineMonth: 'January', location: 'Singapore' },
  'Turkey':                 { count: 20, flag: '🇹🇷', code: 'TR', tuitionRange: [500, 5000],    ieltsRange: [5.5, 6.5], acceptanceRange: [30, 70], scholarshipRate: 0.6, deadlineMonth: 'June', location: 'Istanbul' },
  'India':                  { count: 15, flag: '🇮🇳', code: 'IN', tuitionRange: [2000, 10000],  ieltsRange: [6.0, 6.5], acceptanceRange: [10, 50], scholarshipRate: 0.4, deadlineMonth: 'May', location: 'New Delhi' },
  'Thailand':               { count: 10, flag: '🇹🇭', code: 'TH', tuitionRange: [2000, 6000],  ieltsRange: [5.5, 6.0], acceptanceRange: [40, 80], scholarshipRate: 0.4, deadlineMonth: 'April', location: 'Bangkok' },
  'Indonesia':              { count: 10, flag: '🇮🇩', code: 'ID', tuitionRange: [1000, 5000],   ieltsRange: [5.5, 6.0], acceptanceRange: [30, 70], scholarshipRate: 0.3, deadlineMonth: 'May', location: 'Jakarta' },
  'Philippines':            { count: 8,  flag: '🇵🇭', code: 'PH', tuitionRange: [1500, 5000],  ieltsRange: [5.5, 6.0], acceptanceRange: [40, 80], scholarshipRate: 0.3, deadlineMonth: 'June', location: 'Manila' },
  'Vietnam':                { count: 5,  flag: '🇻🇳', code: 'VN', tuitionRange: [1000, 4000],  ieltsRange: [5.5, 6.0], acceptanceRange: [30, 70], scholarshipRate: 0.3, deadlineMonth: 'May', location: 'Hanoi' },
  'Taiwan':                 { count: 10, flag: '🇹🇼', code: 'TW', tuitionRange: [3000, 8000],  ieltsRange: [5.5, 6.5], acceptanceRange: [25, 65], scholarshipRate: 0.5, deadlineMonth: 'February', location: 'Taipei' },
  'Hong Kong':              { count: 8,  flag: '🇭🇰', code: 'HK', tuitionRange: [15000, 25000], ieltsRange: [6.0, 7.0], acceptanceRange: [10, 30], scholarshipRate: 0.6, deadlineMonth: 'January', location: 'Hong Kong' },
  'Pakistan':               { count: 5,  flag: '🇵🇰', code: 'PK', tuitionRange: [1000, 4000],  ieltsRange: [5.5, 6.0], acceptanceRange: [30, 70], scholarshipRate: 0.4, deadlineMonth: 'July', location: 'Islamabad' },
  'Bangladesh':             { count: 5,  flag: '🇧🇩', code: 'BD', tuitionRange: [1000, 3000],  ieltsRange: [5.5, 6.0], acceptanceRange: [30, 70], scholarshipRate: 0.3, deadlineMonth: 'May', location: 'Dhaka' },
  'Uzbekistan':             { count: 5,  flag: '🇺🇿', code: 'UZ', tuitionRange: [1000, 4000],  ieltsRange: [5.0, 6.0], acceptanceRange: [30, 70], scholarshipRate: 0.5, deadlineMonth: 'July', location: 'Tashkent' },
  'Kazakhstan':             { count: 5,  flag: '🇰🇿', code: 'KZ', tuitionRange: [2000, 6000],  ieltsRange: [5.5, 6.0], acceptanceRange: [30, 70], scholarshipRate: 0.5, deadlineMonth: 'July', location: 'Almaty' },

  // EUROPE (~70 universities)  
  'United Kingdom':         { count: 15, flag: '🇬🇧', code: 'GB', tuitionRange: [20000, 45000], ieltsRange: [6.5, 7.5], acceptanceRange: [10, 40], scholarshipRate: 0.5, deadlineMonth: 'January', location: 'London' },
  'Germany':                { count: 12, flag: '🇩🇪', code: 'DE', tuitionRange: [0, 5000],      ieltsRange: [6.0, 6.5], acceptanceRange: [30, 70], scholarshipRate: 0.7, deadlineMonth: 'July', location: 'Berlin' },
  'France':                 { count: 8,  flag: '🇫🇷', code: 'FR', tuitionRange: [200, 15000],   ieltsRange: [6.0, 7.0], acceptanceRange: [15, 50], scholarshipRate: 0.5, deadlineMonth: 'March', location: 'Paris' },
  'Netherlands':            { count: 5,  flag: '🇳🇱', code: 'NL', tuitionRange: [8000, 20000],  ieltsRange: [6.0, 7.0], acceptanceRange: [40, 80], scholarshipRate: 0.4, deadlineMonth: 'April', location: 'Amsterdam' },
  'Switzerland':            { count: 5,  flag: '🇨🇭', code: 'CH', tuitionRange: [1000, 15000],  ieltsRange: [6.5, 7.0], acceptanceRange: [15, 40], scholarshipRate: 0.5, deadlineMonth: 'December', location: 'Zurich' },
  'Italy':                  { count: 5,  flag: '🇮🇹', code: 'IT', tuitionRange: [1000, 5000],   ieltsRange: [5.5, 6.5], acceptanceRange: [40, 80], scholarshipRate: 0.5, deadlineMonth: 'April', location: 'Milan' },
  'Sweden':                 { count: 4,  flag: '🇸🇪', code: 'SE', tuitionRange: [10000, 20000], ieltsRange: [6.5, 7.0], acceptanceRange: [30, 60], scholarshipRate: 0.6, deadlineMonth: 'January', location: 'Stockholm' },
  'Czech Republic':         { count: 4,  flag: '🇨🇿', code: 'CZ', tuitionRange: [2000, 8000],  ieltsRange: [5.5, 6.5], acceptanceRange: [40, 80], scholarshipRate: 0.5, deadlineMonth: 'March', location: 'Prague' },
  'Poland':                 { count: 4,  flag: '🇵🇱', code: 'PL', tuitionRange: [2000, 6000],  ieltsRange: [5.5, 6.0], acceptanceRange: [50, 85], scholarshipRate: 0.5, deadlineMonth: 'June', location: 'Warsaw' },
  'Hungary':                { count: 4,  flag: '🇭🇺', code: 'HU', tuitionRange: [2000, 8000],  ieltsRange: [5.5, 6.5], acceptanceRange: [40, 80], scholarshipRate: 0.8, deadlineMonth: 'February', location: 'Budapest' },
  'Russia':                 { count: 5,  flag: '🇷🇺', code: 'RU', tuitionRange: [2000, 8000],  ieltsRange: [5.5, 6.5], acceptanceRange: [30, 70], scholarshipRate: 0.6, deadlineMonth: 'July', location: 'Moscow' },

  // AMERICAS + OCEANIA (~60 universities)
  'United States':          { count: 20, flag: '🇺🇸', code: 'US', tuitionRange: [30000, 60000], ieltsRange: [6.5, 7.5], acceptanceRange: [5, 50],  scholarshipRate: 0.6, deadlineMonth: 'January', location: 'Cambridge' },
  'Canada':                 { count: 12, flag: '🇨🇦', code: 'CA', tuitionRange: [15000, 35000], ieltsRange: [6.5, 7.0], acceptanceRange: [20, 60], scholarshipRate: 0.5, deadlineMonth: 'January', location: 'Toronto' },
  'Australia':              { count: 12, flag: '🇦🇺', code: 'AU', tuitionRange: [20000, 45000], ieltsRange: [6.5, 7.0], acceptanceRange: [20, 60], scholarshipRate: 0.5, deadlineMonth: 'October', location: 'Melbourne' },
  'New Zealand':            { count: 5,  flag: '🇳🇿', code: 'NZ', tuitionRange: [15000, 30000], ieltsRange: [6.0, 6.5], acceptanceRange: [40, 80], scholarshipRate: 0.4, deadlineMonth: 'December', location: 'Auckland' },
  
  // AFRICA + MIDDLE EAST (~15 universities)
  'United Arab Emirates':   { count: 5,  flag: '🇦🇪', code: 'AE', tuitionRange: [10000, 30000], ieltsRange: [5.5, 6.5], acceptanceRange: [30, 70], scholarshipRate: 0.5, deadlineMonth: 'June', location: 'Dubai' },
  'Saudi Arabia':           { count: 5,  flag: '🇸🇦', code: 'SA', tuitionRange: [0, 5000],     ieltsRange: [5.5, 6.5], acceptanceRange: [20, 50], scholarshipRate: 0.8, deadlineMonth: 'March', location: 'Riyadh' },
  'Egypt':                  { count: 5,  flag: '🇪🇬', code: 'EG', tuitionRange: [2000, 8000],  ieltsRange: [5.5, 6.0], acceptanceRange: [30, 70], scholarshipRate: 0.4, deadlineMonth: 'July', location: 'Cairo' },
};

// Well-known universities to prioritize (will be matched from API results)
const PRIORITY_UNIVERSITIES = new Set([
  'University of Tokyo', 'Kyoto University', 'Osaka University', 'Tohoku University',
  'Tokyo Institute of Technology', 'Keio University', 'Waseda University', 'Hokkaido University',
  'Nagoya University', 'Kyushu University', 'Hiroshima University', 'Kobe University',
  'Seoul National University', 'KAIST', 'Yonsei University', 'Korea University',
  'Tsinghua University', 'Peking University', 'Fudan University', 'Zhejiang University',
  'Shanghai Jiao Tong University', 'Nanjing University', 'Sun Yat-Sen University',
  'National University of Singapore', 'Nanyang Technological University',
  'University of Hong Kong', 'Chinese University of Hong Kong',
  'Hong Kong University of Science and Technology',
  'National Taiwan University', 'National Tsing Hua University',
  'University of Malaya', 'Universiti Putra Malaysia', 'Universiti Sains Malaysia',
  'Chulalongkorn University', 'Mahidol University',
  'University of Indonesia', 'Bandung Institute of Technology',
  'University of the Philippines',
  'Indian Institute of Technology', 'University of Delhi',
  'Bogazici University', 'Middle East Technical University',
  'University of Oxford', 'University of Cambridge', 'Imperial College London',
  'University College London', 'University of Edinburgh',
  'ETH Zurich', 'EPFL',
  'Technical University of Munich', 'Ludwig Maximilian University of Munich',
  'University of Amsterdam', 'Delft University of Technology',
  'Sorbonne University', 'PSL University', 'École Polytechnique',
  'Massachusetts Institute of Technology', 'Stanford University', 'Harvard University',
  'University of California, Berkeley', 'Columbia University',
  'University of Toronto', 'University of British Columbia', 'McGill University',
  'University of Melbourne', 'University of Sydney', 'Australian National University',
  'University of Auckland',
]);

// City overrides for well-known universities
const LOCATION_OVERRIDES = {
  'University of Tokyo': 'Tokyo',
  'Kyoto University': 'Kyoto',
  'Osaka University': 'Osaka',
  'Tohoku University': 'Sendai',
  'Hokkaido University': 'Sapporo',
  'Nagoya University': 'Nagoya',
  'Kyushu University': 'Fukuoka',
  'Kobe University': 'Kobe',
  'Hiroshima University': 'Hiroshima',
  'Seoul National University': 'Seoul',
  'Yonsei University': 'Seoul',
  'Korea University': 'Seoul',
  'Tsinghua University': 'Beijing',
  'Peking University': 'Beijing',
  'Fudan University': 'Shanghai',
  'University of Oxford': 'Oxford',
  'University of Cambridge': 'Cambridge',
  'ETH Zurich': 'Zurich',
  'Technical University of Munich': 'Munich',
  'Stanford University': 'Stanford',
  'Harvard University': 'Cambridge',
  'Massachusetts Institute of Technology': 'Cambridge',
  'McGill University': 'Montreal',
  'University of British Columbia': 'Vancouver',
  'University of Melbourne': 'Melbourne',
  'University of Sydney': 'Sydney',
  'University of Auckland': 'Auckland',
};

// Ranking ranges based on country reputation
const RANKING_TIERS = {
  'US': [1, 200], 'GB': [3, 250], 'CH': [5, 100], 'SG': [8, 60],
  'JP': [20, 500], 'CN': [15, 400], 'KR': [30, 500], 'AU': [25, 350],
  'CA': [20, 300], 'DE': [30, 300], 'FR': [25, 350], 'HK': [20, 150],
  'NL': [50, 250], 'SE': [60, 300], 'TW': [60, 500], 'MY': [60, 600],
  'TH': [100, 700], 'IN': [100, 600], 'TR': [200, 800], 'ID': [200, 800],
  'NZ': [60, 400], 'IT': [100, 500], 'RU': [80, 600], 'PL': [200, 700],
  'CZ': [200, 600], 'HU': [200, 700], 'AE': [150, 600], 'SA': [100, 500],
  'PH': [300, 900], 'VN': [400, 1000], 'PK': [300, 900], 'BD': [500, 1200],
  'UZ': [500, 1200], 'KZ': [200, 800], 'EG': [300, 900], 'FR': [25, 350],
};

// ==================== HELPER FUNCTIONS ====================

function randomBetween(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

function randomFloat(min, max, decimals = 1) {
  return parseFloat((Math.random() * (max - min) + min).toFixed(decimals));
}

function randomFromArray(arr) {
  return arr[Math.floor(Math.random() * arr.length)];
}

function generateDeadline(month) {
  const months = {
    'January': '2026-01', 'February': '2026-02', 'March': '2026-03',
    'April': '2026-04', 'May': '2026-05', 'June': '2026-06',
    'July': '2026-07', 'August': '2026-08', 'September': '2026-09',
    'October': '2026-10', 'November': '2026-11', 'December': '2025-12',
  };
  const prefix = months[month] || '2026-03';
  const day = randomBetween(1, 28);
  const dayStr = day.toString().padStart(2, '0');
  const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
  const [y, m] = prefix.split('-');
  return `${monthNames[parseInt(m) - 1]} ${day}, ${y}`;
}

function generateTuitionRange(min, max) {
  const actualMin = randomBetween(min, Math.floor((min + max) / 2));
  const actualMax = randomBetween(Math.floor((min + max) / 2), max);
  if (actualMin >= 1000) {
    return `$${(actualMin / 1000).toFixed(0)}K - $${(actualMax / 1000).toFixed(0)}K/year`;
  }
  return `$${actualMin.toLocaleString()} - $${actualMax.toLocaleString()}/year`;
}

function getUrgency(deadlineStr) {
  // Simple urgency based on month
  const monthMatch = deadlineStr.match(/(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)/);
  if (!monthMatch) return 'medium';
  const urgentMonths = ['Jan', 'Feb', 'Mar', 'Dec'];
  const mediumMonths = ['Apr', 'May', 'Jun'];
  if (urgentMonths.includes(monthMatch[1])) return 'high';
  if (mediumMonths.includes(monthMatch[1])) return 'medium';
  return 'low';
}

function escapeSQL(str) {
  return str.replace(/'/g, "''").replace(/\\/g, '\\\\');
}

// ==================== FETCH FROM HIPOLABS API ====================

async function fetchUniversitiesForCountry(country) {
  const encoded = encodeURIComponent(country);
  try {
    const response = await fetch(`http://universities.hipolabs.com/search?country=${encoded}`);
    if (!response.ok) {
      console.warn(`  ⚠️  Failed to fetch for ${country}: ${response.status}`);
      return [];
    }
    const data = await response.json();
    return data;
  } catch (error) {
    console.warn(`  ⚠️  Error fetching for ${country}: ${error.message}`);
    return [];
  }
}

function selectBestUniversities(apiResults, config, country) {
  const count = config.count;

  // Separate priority universities from the rest
  const priority = [];
  const others = [];

  for (const uni of apiResults) {
    // Skip duplicates and very short names
    if (uni.name.length < 5) continue;

    const isPriority = PRIORITY_UNIVERSITIES.has(uni.name) ||
      [...PRIORITY_UNIVERSITIES].some(p => uni.name.includes(p) || p.includes(uni.name));

    if (isPriority) {
      priority.push(uni);
    } else {
      others.push(uni);
    }
  }

  // Take priority first, then fill with others
  // Prefer universities with keywords like "University", "Institute", "College"
  const preferred = others.filter(u =>
    u.name.includes('University') ||
    u.name.includes('Institute') ||
    u.name.includes('College')
  );
  const rest = others.filter(u =>
    !u.name.includes('University') &&
    !u.name.includes('Institute') &&
    !u.name.includes('College')
  );

  // Shuffle preferred and rest
  preferred.sort(() => Math.random() - 0.5);
  rest.sort(() => Math.random() - 0.5);

  const selected = [
    ...priority.slice(0, count),
    ...preferred.slice(0, Math.max(0, count - priority.length)),
    ...rest.slice(0, Math.max(0, count - priority.length - preferred.length)),
  ].slice(0, count);

  return selected;
}

// ==================== ENRICHMENT ====================

function enrichUniversity(apiUni, config, country, index) {
  const [tuitionMin, tuitionMax] = config.tuitionRange;
  const [ieltsMin, ieltsMax] = config.ieltsRange;
  const [accMin, accMax] = config.acceptanceRange;
  const code = config.code;
  const rankTier = RANKING_TIERS[code] || [200, 1000];

  // The first few universities in each country get better rankings
  const rankBoost = Math.max(0, 1 - (index / config.count));
  const baseRank = rankTier[0] + (rankTier[1] - rankTier[0]) * (1 - rankBoost);
  const ranking = Math.max(rankTier[0], Math.round(baseRank + randomBetween(-30, 30)));

  const isPriority = PRIORITY_UNIVERSITIES.has(apiUni.name);
  const hasScholarship = Math.random() < config.scholarshipRate;
  const ielts = randomFloat(ieltsMin, ieltsMax);
  const acceptanceRate = isPriority
    ? randomBetween(accMin, Math.floor((accMin + accMax) / 2))
    : randomBetween(accMin, accMax);

  const actualTuitionMin = randomBetween(tuitionMin, Math.floor((tuitionMin + tuitionMax) / 2));
  const actualTuitionMax = randomBetween(Math.floor((tuitionMin + tuitionMax) / 2), tuitionMax);

  const location = LOCATION_OVERRIDES[apiUni.name] ||
    apiUni['state-province'] ||
    config.location;

  const website = apiUni.web_pages?.[0]?.replace(/\/$/, '') || null;
  const imageUrl = `https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80`;
  const deadline = generateDeadline(config.deadlineMonth);
  const urgency = getUrgency(deadline);
  const tuitionRange = generateTuitionRange(actualTuitionMin, actualTuitionMax);

  const studentPop = randomBetween(5000, 60000);
  const intlPct = randomFloat(5, 35);
  const programsOffered = randomBetween(50, 300);

  const descriptions = [
    `${apiUni.name} is a prestigious institution in ${country} known for academic excellence and research innovation. Located in ${location}, it offers a vibrant campus life and world-class facilities for international students.`,
    `Founded in ${country}, ${apiUni.name} has established itself as a leading university with strong programs across sciences, engineering, humanities, and business. The university attracts students from around the world.`,
    `${apiUni.name} in ${location}, ${country} is renowned for its cutting-edge research and comprehensive academic programs. The institution provides excellent support services for international students.`,
  ];

  return {
    name: apiUni.name,
    country,
    country_flag: config.flag,
    location,
    description: randomFromArray(descriptions),
    tuition_range: tuitionRange,
    tuition_min: actualTuitionMin,
    tuition_max: actualTuitionMax,
    ielts_requirement: ielts,
    deadline,
    has_scholarship: hasScholarship,
    image_url: imageUrl,
    urgency,
    ranking,
    acceptance_rate: acceptanceRate,
    student_population: studentPop,
    international_students_pct: intlPct,
    programs_offered: programsOffered,
    website,
  };
}

// ==================== SQL GENERATION ====================

function generateSQL(universities) {
  let sql = `-- ========================================
-- UniSearch University Database Seed
-- Generated: ${new Date().toISOString()}
-- Total: ${universities.length} universities
-- ========================================

-- Clear existing data
DELETE FROM saved_universities;
DELETE FROM universities;

-- Insert universities
`;

  for (const uni of universities) {
    sql += `INSERT INTO universities (
  name, country, country_flag, location, description,
  tuition_range, tuition_min, tuition_max, ielts_requirement,
  deadline, has_scholarship, image_url, urgency,
  ranking, acceptance_rate, student_population,
  international_students_pct, programs_offered, website
) VALUES (
  '${escapeSQL(uni.name)}',
  '${escapeSQL(uni.country)}',
  '${uni.country_flag}',
  '${escapeSQL(uni.location)}',
  '${escapeSQL(uni.description)}',
  '${escapeSQL(uni.tuition_range)}',
  ${uni.tuition_min},
  ${uni.tuition_max},
  ${uni.ielts_requirement},
  '${escapeSQL(uni.deadline)}',
  ${uni.has_scholarship},
  '${escapeSQL(uni.image_url)}',
  '${uni.urgency}',
  ${uni.ranking},
  ${uni.acceptance_rate},
  ${uni.student_population},
  ${uni.international_students_pct},
  ${uni.programs_offered},
  ${uni.website ? `'${escapeSQL(uni.website)}'` : 'NULL'}
);\n\n`;
  }

  return sql;
}

// ==================== MAIN ====================

async function main() {
  console.log('🎓 UniSearch — University Data Seed Generator\n');

  const allUniversities = [];
  const countries = Object.keys(COUNTRY_CONFIG);

  for (const country of countries) {
    const config = COUNTRY_CONFIG[country];
    process.stdout.write(`  📍 ${config.flag} ${country} (target: ${config.count})...`);

    const apiResults = await fetchUniversitiesForCountry(country);
    let selected;

    if (apiResults.length > 0) {
      selected = selectBestUniversities(apiResults, config, country);
      console.log(` ✅ Found ${apiResults.length}, selected ${selected.length}`);
    } else {
      // Generate placeholder universities for countries not in API
      selected = Array.from({ length: config.count }, (_, i) => ({
        name: `${config.location} University ${i > 0 ? i + 1 : ''}`.trim(),
        web_pages: [],
        'state-province': config.location,
      }));
      console.log(` ⚠️  Using generated names (${config.count})`);
    }

    const enriched = selected.map((uni, idx) =>
      enrichUniversity(uni, config, country, idx)
    );

    allUniversities.push(...enriched);

    // Small delay to be nice to the API
    await new Promise(resolve => setTimeout(resolve, 300));
  }

  console.log(`\n📊 Total universities: ${allUniversities.length}`);

  // Generate SQL
  const sql = generateSQL(allUniversities);
  const outputPath = path.join(__dirname, '..', 'supabase', 'universities_seed.sql');
  fs.writeFileSync(outputPath, sql, 'utf-8');

  console.log(`✅ SQL written to: ${outputPath}`);
  console.log(`\n🚀 Next steps:`);
  console.log(`   1. Open Supabase Dashboard → SQL Editor`);
  console.log(`   2. Paste the contents of supabase/universities_seed.sql`);
  console.log(`   3. Click "Run"`);
  console.log(`   4. Restart your dev server\n`);

  // Print distribution summary
  console.log('📊 Distribution:');
  const regions = { 'Asia': 0, 'Europe': 0, 'Americas/Oceania': 0, 'Middle East/Africa': 0 };
  const asianCountries = ['Japan', 'Korea, Republic of', 'China', 'Malaysia', 'Singapore', 'Turkey',
    'India', 'Thailand', 'Indonesia', 'Philippines', 'Vietnam', 'Taiwan',
    'Hong Kong', 'Pakistan', 'Bangladesh', 'Uzbekistan', 'Kazakhstan'];
  const europeanCountries = ['United Kingdom', 'Germany', 'France', 'Netherlands', 'Switzerland',
    'Italy', 'Sweden', 'Czech Republic', 'Poland', 'Hungary', 'Russia'];

  for (const uni of allUniversities) {
    if (asianCountries.includes(uni.country)) regions['Asia']++;
    else if (europeanCountries.includes(uni.country)) regions['Europe']++;
    else if (['United Arab Emirates', 'Saudi Arabia', 'Egypt'].includes(uni.country)) regions['Middle East/Africa']++;
    else regions['Americas/Oceania']++;
  }

  for (const [region, count] of Object.entries(regions)) {
    const pct = ((count / allUniversities.length) * 100).toFixed(1);
    console.log(`   ${region}: ${count} (${pct}%)`);
  }
}

main().catch(console.error);
