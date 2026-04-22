import { writeFileSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';
import { mockPrograms } from '../src/data/mockPrograms.ts';

const __dirname = dirname(fileURLToPath(import.meta.url));
const OUTPUT_PATH = join(__dirname, '..', 'supabase', 'programs_seed.sql');

function escapeSQL(str) {
  if (!str) return '';
  return str.replace(/'/g, "''");
}

function formatArray(arr) {
  if (!arr || arr.length === 0) return "'{}'";
  // Postgres arrays: ARRAY['a','b']
  return `ARRAY[${arr.map(a => `'${escapeSQL(a)}'`).join(',')}]`;
}

console.log('📚 Generating programs database seed...');

let totalCount = 0;
const allInserts = mockPrograms.map(p => {
  totalCount++;
  
  const eligibilityJson = JSON.stringify(p.eligibility || {}).replace(/'/g, "''");
  
  return `INSERT INTO programs (
  id, name, type, description, countries, country_flags,
  funding_amount, program_level, duration, fields_of_study,
  eligibility, deadline, urgency, benefits, application_process,
  website, image_url, has_full_funding
) VALUES (
  '${escapeSQL(p.id)}',
  '${escapeSQL(p.name)}',
  '${escapeSQL(p.type)}',
  '${escapeSQL(p.description)}',
  ${formatArray(p.countries)},
  ${formatArray(p.countryFlags)},
  '${escapeSQL(p.fundingAmount)}',
  ${formatArray(p.programLevel)},
  '${escapeSQL(p.duration)}',
  ${formatArray(p.fieldsOfStudy)},
  '${eligibilityJson}'::jsonb,
  '${escapeSQL(p.deadline)}',
  '${escapeSQL(p.urgency || 'medium')}',
  ${formatArray(p.benefits)},
  '${escapeSQL(p.applicationProcess)}',
  '${escapeSQL(p.website)}',
  '${escapeSQL(p.image)}',
  ${p.hasFullFunding}
);`;
});

const now = new Date().toISOString();
const header = `-- ========================================
-- UniSearch Scholarship Programs Database Seed
-- Source: Curated Real-World Programs
-- Generated: ${now}
-- Total: ${totalCount} programs
-- ========================================

-- Clear existing data
DELETE FROM programs;

-- Insert programs
`;

const output = header + allInserts.join('\n\n') + '\n';
writeFileSync(OUTPUT_PATH, output, 'utf8');

console.log(`\n✅ Done! Generated ${totalCount} programs → ${OUTPUT_PATH}`);
console.log('📝 Run this SQL in your Supabase SQL Editor to update the database.');
