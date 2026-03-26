/**
 * UniSearch — University Web Scraper
 * 
 * Visits university websites to extract and update data:
 * - Tuition fees, IELTS requirements, deadlines
 * - Program counts, student population
 * - Description text and key facts
 * 
 * Usage:
 *   node scripts/scrape-universities.mjs                    # Scrape all universities
 *   node scripts/scrape-universities.mjs --country Japan    # Scrape only Japanese universities
 *   node scripts/scrape-universities.mjs --limit 10         # Scrape first 10 only
 *   node scripts/scrape-universities.mjs --dry-run          # Scrape but don't update DB
 *   node scripts/scrape-universities.mjs --report           # Generate JSON report only
 */

import * as cheerio from 'cheerio';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));

// ==================== CONFIG ====================

// Read Supabase credentials from .env
function loadEnv() {
  const envPath = path.join(__dirname, '..', '.env');
  const env = {};
  if (fs.existsSync(envPath)) {
    const lines = fs.readFileSync(envPath, 'utf-8').split('\n');
    for (const line of lines) {
      const match = line.match(/^([^#=]+)=(.*)$/);
      if (match) env[match[1].trim()] = match[2].trim();
    }
  }
  return env;
}

const env = loadEnv();
const SUPABASE_URL = env.VITE_SUPABASE_URL;
const SUPABASE_KEY = env.VITE_SUPABASE_ANON_KEY;

const CONCURRENCY = 3;          // Max parallel requests
const REQUEST_TIMEOUT = 15000;  // 15s timeout per request
const DELAY_BETWEEN = 1000;     // 1s delay between batches
const MAX_PAGE_SIZE = 500000;   // Max 500KB per page

// Pages to look for on each university website
const TARGET_PAGES = [
  '/admissions', '/admission', '/apply',
  '/tuition', '/fees', '/cost', '/tuition-fees',
  '/international', '/international-students', '/global',
  '/programs', '/academics', '/courses',
  '/about', '/about-us',
];

// ==================== SUPABASE CLIENT ====================

async function supabaseFetch(endpoint, options = {}) {
  const url = `${SUPABASE_URL}/rest/v1/${endpoint}`;
  const response = await fetch(url, {
    ...options,
    headers: {
      'apikey': SUPABASE_KEY,
      'Authorization': `Bearer ${SUPABASE_KEY}`,
      'Content-Type': 'application/json',
      'Prefer': options.method === 'PATCH' ? 'return=minimal' : 'return=representation',
      ...options.headers,
    },
  });
  
  if (!response.ok) {
    const text = await response.text();
    throw new Error(`Supabase ${response.status}: ${text}`);
  }
  
  if (options.method === 'PATCH') return null;
  return response.json();
}

async function getUniversities(country, limit) {
  let query = 'universities?select=id,name,country,website,tuition_range,ielts_requirement,ranking,deadline&order=country,name';
  if (country) query += `&country=eq.${encodeURIComponent(country)}`;
  if (limit) query += `&limit=${limit}`;
  query += '&website=not.is.null';
  return supabaseFetch(query);
}

async function updateUniversity(id, data) {
  return supabaseFetch(`universities?id=eq.${id}`, {
    method: 'PATCH',
    body: JSON.stringify(data),
  });
}

// ==================== WEB SCRAPING ====================

async function fetchPage(url, timeout = REQUEST_TIMEOUT) {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), timeout);
  
  try {
    const response = await fetch(url, {
      signal: controller.signal,
      headers: {
        'User-Agent': 'UniSearch-Bot/1.0 (Educational Research; +https://unisearch.edu)',
        'Accept': 'text/html,application/xhtml+xml',
        'Accept-Language': 'en-US,en;q=0.9',
      },
      redirect: 'follow',
    });
    
    if (!response.ok) return null;
    
    const contentType = response.headers.get('content-type') || '';
    if (!contentType.includes('text/html') && !contentType.includes('text/plain')) return null;
    
    const text = await response.text();
    return text.slice(0, MAX_PAGE_SIZE); // Limit size
  } catch {
    return null;
  } finally {
    clearTimeout(timer);
  }
}

function extractTextContent($) {
  // Remove scripts, styles, nav, footer
  $('script, style, nav, footer, header, noscript, iframe').remove();
  return $('body').text().replace(/\s+/g, ' ').trim().slice(0, 50000);
}

// ==================== DATA EXTRACTION PATTERNS ====================

const PATTERNS = {
  tuition: [
    // Dollar amounts: $5,000, $50,000, USD 5000
    /(?:tuition|fee|cost)[^.]{0,100}?\$[\d,]+/gi,
    /\$[\d,]+(?:\s*[-–]\s*\$[\d,]+)?(?:\s*(?:per|\/)\s*(?:year|semester|term|annum))?/gi,
    /(?:USD|US\$)\s*[\d,]+/gi,
    /(?:tuition|fee)[^.]{0,60}?[\d,]+\s*(?:USD|dollars)/gi,
    // Euro amounts
    /€[\d,]+/gi,
    /EUR\s*[\d,]+/gi,
    // Yen amounts  
    /¥[\d,]+/gi,
    /JPY\s*[\d,]+/gi,
    // Won amounts
    /₩[\d,]+/gi,
    /KRW\s*[\d,]+/gi,
  ],

  ielts: [
    /IELTS[^.]{0,50}?([\d]\.[\d])/gi,
    /(?:minimum|required|overall)[^.]{0,30}?IELTS[^.]{0,30}?([\d]\.[\d])/gi,
    /IELTS\s*(?:score|band|overall)?[:\s]*(\d\.?\d?)/gi,
  ],

  toefl: [
    /TOEFL[^.]{0,50}?(\d{2,3})/gi,
    /TOEFL\s*(?:iBT|score)?[:\s]*(\d{2,3})/gi,
  ],

  deadline: [
    /(?:application|admission|apply)[^.]{0,80}?(?:deadline|due|by|before)[^.]{0,50}?(\w+\s+\d{1,2},?\s*\d{4})/gi,
    /(?:deadline|due date)[:\s]*(\w+\s+\d{1,2},?\s*\d{4})/gi,
    /(?:deadline|due date)[:\s]*(\d{1,2}\s+\w+\s+\d{4})/gi,
  ],

  acceptanceRate: [
    /(?:acceptance|admission)\s*rate[:\s]*(\d{1,3}(?:\.\d)?)\s*%/gi,
    /(\d{1,3}(?:\.\d)?)\s*%\s*(?:acceptance|admission)\s*rate/gi,
  ],

  studentPopulation: [
    /(\d{1,3}[,.]?\d{3})\s*(?:students|enrolled|enrollment)/gi,
    /(?:student|enrollment)[^.]{0,30}?(\d{1,3}[,.]?\d{3})/gi,
    /(?:total\s+)?(?:students?|enrollment)[:\s]*(?:approximately\s+)?(\d{1,3}[,.]?\d{3})/gi,
  ],

  programs: [
    /(\d{2,4})\s*(?:programs?|courses?|degrees?|majors?)\s*(?:offered|available)/gi,
    /(?:offers?|offering)\s*(?:over|more than|approximately)?\s*(\d{2,4})\s*(?:programs?|courses?|degrees?)/gi,
  ],

  scholarship: [
    /scholarship/gi,
    /financial\s*aid/gi,
    /(?:merit|need)[- ]based\s*(?:scholarship|award|grant)/gi,
    /full\s*(?:tuition|funding|scholarship)/gi,
  ],

  internationalStudents: [
    /(\d{1,2}(?:\.\d)?)\s*%\s*(?:international|overseas|foreign)\s*students/gi,
    /(?:international|overseas|foreign)\s*students[^.]{0,30}?(\d{1,2}(?:\.\d)?)\s*%/gi,
  ],
};

function extractData(text, url) {
  const extracted = {
    url,
    tuitionMentions: [],
    ieltsScores: [],
    toeflScores: [],
    deadlines: [],
    acceptanceRates: [],
    studentPopulations: [],
    programCounts: [],
    hasScholarshipInfo: false,
    internationalPcts: [],
  };

  // Tuition
  for (const pattern of PATTERNS.tuition) {
    const matches = text.match(pattern);
    if (matches) {
      extracted.tuitionMentions.push(...matches.slice(0, 5).map(m => m.trim()));
    }
  }

  // IELTS
  for (const pattern of PATTERNS.ielts) {
    let match;
    while ((match = pattern.exec(text)) !== null) {
      const score = parseFloat(match[1]);
      if (score >= 4.0 && score <= 9.0) {
        extracted.ieltsScores.push(score);
      }
    }
  }

  // TOEFL
  for (const pattern of PATTERNS.toefl) {
    let match;
    while ((match = pattern.exec(text)) !== null) {
      const score = parseInt(match[1]);
      if (score >= 60 && score <= 120) {
        extracted.toeflScores.push(score);
      }
    }
  }

  // Deadlines
  for (const pattern of PATTERNS.deadline) {
    let match;
    while ((match = pattern.exec(text)) !== null) {
      extracted.deadlines.push(match[1].trim());
    }
  }

  // Acceptance rate
  for (const pattern of PATTERNS.acceptanceRate) {
    let match;
    while ((match = pattern.exec(text)) !== null) {
      const rate = parseFloat(match[1]);
      if (rate > 0 && rate <= 100) {
        extracted.acceptanceRates.push(rate);
      }
    }
  }

  // Student population
  for (const pattern of PATTERNS.studentPopulation) {
    let match;
    while ((match = pattern.exec(text)) !== null) {
      const num = parseInt(match[1].replace(/[,.]/g, ''));
      if (num >= 500 && num <= 200000) {
        extracted.studentPopulations.push(num);
      }
    }
  }

  // Programs
  for (const pattern of PATTERNS.programs) {
    let match;
    while ((match = pattern.exec(text)) !== null) {
      const count = parseInt(match[1]);
      if (count >= 10 && count <= 5000) {
        extracted.programCounts.push(count);
      }
    }
  }

  // Scholarships
  for (const pattern of PATTERNS.scholarship) {
    if (pattern.test(text)) {
      extracted.hasScholarshipInfo = true;
      break;
    }
  }

  // International students %
  for (const pattern of PATTERNS.internationalStudents) {
    let match;
    while ((match = pattern.exec(text)) !== null) {
      const pct = parseFloat(match[1]);
      if (pct > 0 && pct <= 100) {
        extracted.internationalPcts.push(pct);
      }
    }
  }

  // Deduplicate
  extracted.tuitionMentions = [...new Set(extracted.tuitionMentions)].slice(0, 5);
  extracted.ieltsScores = [...new Set(extracted.ieltsScores)];
  extracted.toeflScores = [...new Set(extracted.toeflScores)];
  extracted.deadlines = [...new Set(extracted.deadlines)].slice(0, 3);

  return extracted;
}

// ==================== SCRAPER ====================

async function scrapeUniversity(uni) {
  const result = {
    id: uni.id,
    name: uni.name,
    country: uni.country,
    website: uni.website,
    status: 'pending',
    pagesScraped: 0,
    extracted: null,
    error: null,
    updates: {},
  };

  if (!uni.website) {
    result.status = 'skipped';
    result.error = 'No website URL';
    return result;
  }

  try {
    // Normalize URL
    let baseUrl = uni.website;
    if (!baseUrl.startsWith('http')) baseUrl = 'https://' + baseUrl;
    baseUrl = baseUrl.replace(/\/$/, '');

    // Fetch main page
    const mainHtml = await fetchPage(baseUrl);
    if (!mainHtml) {
      result.status = 'failed';
      result.error = 'Could not fetch main page';
      return result;
    }

    result.pagesScraped++;
    const $ = cheerio.load(mainHtml);
    let allText = extractTextContent($);

    // Try to find and fetch sub-pages (admissions, tuition, etc.)
    const links = [];
    $('a[href]').each((_, el) => {
      const href = $(el).attr('href');
      if (href) links.push(href);
    });

    // Find relevant sub-pages
    const relevantLinks = new Set();
    for (const href of links) {
      const lowerHref = href.toLowerCase();
      for (const target of TARGET_PAGES) {
        if (lowerHref.includes(target) || lowerHref.endsWith(target)) {
          try {
            const fullUrl = href.startsWith('http') ? href : new URL(href, baseUrl).href;
            // Only follow links on the same domain
            if (fullUrl.includes(new URL(baseUrl).hostname)) {
              relevantLinks.add(fullUrl);
            }
          } catch { /* ignore malformed */ }
        }
      }
      if (relevantLinks.size >= 4) break; // Max 4 sub-pages
    }

    // Fetch sub-pages
    for (const subUrl of relevantLinks) {
      const subHtml = await fetchPage(subUrl, 10000);
      if (subHtml) {
        const sub$ = cheerio.load(subHtml);
        allText += ' ' + extractTextContent(sub$);
        result.pagesScraped++;
      }
      // Small delay between sub-page requests
      await new Promise(r => setTimeout(r, 500));
    }

    // Extract data from all collected text
    result.extracted = extractData(allText, baseUrl);
    result.status = 'success';

    // Determine what updates to apply
    const updates = {};

    // Update IELTS if found
    if (result.extracted.ieltsScores.length > 0) {
      const avgIelts = result.extracted.ieltsScores.reduce((a, b) => a + b, 0) / result.extracted.ieltsScores.length;
      if (avgIelts !== uni.ielts_requirement) {
        updates.ielts_requirement = parseFloat(avgIelts.toFixed(1));
      }
    }

    // Update scholarship info
    if (result.extracted.hasScholarshipInfo) {
      updates.has_scholarship = true;
    }

    // Update acceptance rate if found
    if (result.extracted.acceptanceRates.length > 0) {
      updates.acceptance_rate = result.extracted.acceptanceRates[0];
    }

    // Update student population if found
    if (result.extracted.studentPopulations.length > 0) {
      updates.student_population = result.extracted.studentPopulations[0];
    }

    // Update program count if found
    if (result.extracted.programCounts.length > 0) {
      updates.programs_offered = result.extracted.programCounts[0];
    }

    // Update international students % if found
    if (result.extracted.internationalPcts.length > 0) {
      updates.international_students_pct = result.extracted.internationalPcts[0];
    }

    result.updates = updates;

  } catch (err) {
    result.status = 'failed';
    result.error = err.message;
  }

  return result;
}

// ==================== BATCH PROCESSING ====================

async function processBatch(batch) {
  return Promise.all(batch.map(uni => scrapeUniversity(uni)));
}

// ==================== REPORTING ====================

function generateReport(results) {
  const report = {
    generatedAt: new Date().toISOString(),
    totalUniversities: results.length,
    summary: {
      success: results.filter(r => r.status === 'success').length,
      failed: results.filter(r => r.status === 'failed').length,
      skipped: results.filter(r => r.status === 'skipped').length,
    },
    totalPagesScraped: results.reduce((sum, r) => sum + r.pagesScraped, 0),
    dataFound: {
      withTuition: results.filter(r => r.extracted?.tuitionMentions?.length > 0).length,
      withIelts: results.filter(r => r.extracted?.ieltsScores?.length > 0).length,
      withDeadlines: results.filter(r => r.extracted?.deadlines?.length > 0).length,
      withAcceptanceRate: results.filter(r => r.extracted?.acceptanceRates?.length > 0).length,
      withStudentPop: results.filter(r => r.extracted?.studentPopulations?.length > 0).length,
      withScholarshipInfo: results.filter(r => r.extracted?.hasScholarshipInfo).length,
      withPrograms: results.filter(r => r.extracted?.programCounts?.length > 0).length,
    },
    updatedUniversities: results.filter(r => Object.keys(r.updates || {}).length > 0).length,
    results: results.map(r => ({
      name: r.name,
      country: r.country,
      status: r.status,
      pagesScraped: r.pagesScraped,
      error: r.error,
      dataFound: r.extracted ? {
        tuition: r.extracted.tuitionMentions?.slice(0, 3) || [],
        ielts: r.extracted.ieltsScores || [],
        deadlines: r.extracted.deadlines || [],
        scholarship: r.extracted.hasScholarshipInfo,
      } : null,
      updates: r.updates,
    })),
  };

  return report;
}

function printSummary(report) {
  console.log('\n' + '='.repeat(60));
  console.log('📊 SCRAPING REPORT');
  console.log('='.repeat(60));
  console.log(`📅 Generated: ${report.generatedAt}`);
  console.log(`🎓 Total universities: ${report.totalUniversities}`);
  console.log(`📄 Total pages scraped: ${report.totalPagesScraped}`);
  console.log('');
  console.log('── Status ──');
  console.log(`  ✅ Success: ${report.summary.success}`);
  console.log(`  ❌ Failed:  ${report.summary.failed}`);
  console.log(`  ⏭️  Skipped: ${report.summary.skipped}`);
  console.log('');
  console.log('── Data Found ──');
  console.log(`  💰 Tuition info:       ${report.dataFound.withTuition} universities`);
  console.log(`  📝 IELTS scores:       ${report.dataFound.withIelts} universities`);
  console.log(`  📅 Deadlines:          ${report.dataFound.withDeadlines} universities`);
  console.log(`  📈 Acceptance rates:   ${report.dataFound.withAcceptanceRate} universities`);
  console.log(`  👥 Student population: ${report.dataFound.withStudentPop} universities`);
  console.log(`  🎓 Scholarship info:   ${report.dataFound.withScholarshipInfo} universities`);
  console.log(`  📚 Program counts:     ${report.dataFound.withPrograms} universities`);
  console.log('');
  console.log(`🔄 Universities with updates: ${report.updatedUniversities}`);
  console.log('='.repeat(60));
}

// ==================== MAIN ====================

async function main() {
  // Parse CLI arguments
  const args = process.argv.slice(2);
  const getArg = (name) => {
    const idx = args.indexOf(name);
    return idx !== -1 ? args[idx + 1] : null;
  };
  const hasFlag = (name) => args.includes(name);

  const country = getArg('--country');
  const limit = getArg('--limit') ? parseInt(getArg('--limit')) : null;
  const dryRun = hasFlag('--dry-run') || hasFlag('--report');
  const reportOnly = hasFlag('--report');

  console.log('🕷️  UniSearch — University Web Scraper\n');

  if (!SUPABASE_URL || !SUPABASE_KEY) {
    console.error('❌ Missing Supabase credentials in .env file');
    process.exit(1);
  }

  // Fetch universities from database
  console.log('📡 Fetching universities from Supabase...');
  let universities;
  try {
    universities = await getUniversities(country, limit);
  } catch (err) {
    console.error(`❌ Failed to fetch from Supabase: ${err.message}`);
    console.log('\n💡 Make sure you have run the universities_seed.sql in Supabase SQL Editor first.');
    process.exit(1);
  }

  console.log(`   Found ${universities.length} universities with websites`);
  if (country) console.log(`   Filtered by country: ${country}`);
  if (limit) console.log(`   Limited to: ${limit}`);
  if (dryRun) console.log(`   🔒 DRY RUN — no database updates will be made`);
  console.log('');

  // Process in batches
  const allResults = [];
  const total = universities.length;
  
  for (let i = 0; i < total; i += CONCURRENCY) {
    const batch = universities.slice(i, i + CONCURRENCY);
    const batchNum = Math.floor(i / CONCURRENCY) + 1;
    const totalBatches = Math.ceil(total / CONCURRENCY);
    
    process.stdout.write(`  ⏳ Batch ${batchNum}/${totalBatches} (${i + 1}-${Math.min(i + CONCURRENCY, total)}/${total})...`);
    
    const results = await processBatch(batch);
    allResults.push(...results);

    const successCount = results.filter(r => r.status === 'success').length;
    const failCount = results.filter(r => r.status === 'failed').length;
    console.log(` ✅${successCount} ❌${failCount}`);

    // Apply updates to database (unless dry run)
    if (!dryRun) {
      for (const result of results) {
        if (Object.keys(result.updates).length > 0) {
          try {
            await updateUniversity(result.id, result.updates);
          } catch (err) {
            console.warn(`    ⚠️  Failed to update ${result.name}: ${err.message}`);
          }
        }
      }
    }

    // Delay between batches
    if (i + CONCURRENCY < total) {
      await new Promise(r => setTimeout(r, DELAY_BETWEEN));
    }
  }

  // Generate and save report
  const report = generateReport(allResults);
  printSummary(report);

  // Save detailed report as JSON
  const reportPath = path.join(__dirname, '..', 'scrape-report.json');
  fs.writeFileSync(reportPath, JSON.stringify(report, null, 2), 'utf-8');
  console.log(`\n📁 Detailed report saved to: scrape-report.json`);

  if (dryRun) {
    console.log('\n🔒 This was a dry run. To apply updates, run without --dry-run or --report flag.');
  }

  // Show some interesting findings
  const withData = allResults.filter(r => 
    r.extracted && (
      r.extracted.tuitionMentions.length > 0 ||
      r.extracted.ieltsScores.length > 0 ||
      r.extracted.deadlines.length > 0
    )
  );

  if (withData.length > 0) {
    console.log('\n📋 Sample findings:');
    for (const r of withData.slice(0, 5)) {
      console.log(`\n  🏫 ${r.name} (${r.country})`);
      if (r.extracted.tuitionMentions.length)
        console.log(`     💰 Tuition: ${r.extracted.tuitionMentions[0]}`);
      if (r.extracted.ieltsScores.length)
        console.log(`     📝 IELTS: ${r.extracted.ieltsScores[0]}`);
      if (r.extracted.deadlines.length)
        console.log(`     📅 Deadline: ${r.extracted.deadlines[0]}`);
      if (r.extracted.hasScholarshipInfo)
        console.log(`     🎓 Scholarship info found`);
    }
  }
}

main().catch(err => {
  console.error('💥 Fatal error:', err.message);
  process.exit(1);
});
