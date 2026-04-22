import { fetchUniversities, fetchPrograms } from './api';
import type { University, Program } from './database.types';
import Fuse from 'fuse.js';

export interface StudentProfile {
  academicBackground: string;
  gpa: number;
  ieltsScore: number;
  budgetMin: number;
  budgetMax: number;
  preferredCountries: string[];
}

export interface ScoredUniversity extends University {
  score: number;
  category: 'safe' | 'match' | 'ambitious';
  reasons: string[];
}

interface ScoreBreakdown {
  ieltsScore: number;
  budgetScore: number;
  countryScore: number;
  acceptanceScore: number;
  reasons: string[];
}

function calculateScore(university: University, profile: StudentProfile): ScoreBreakdown {
  const reasons: string[] = [];
  let ieltsScore = 0;
  let budgetScore = 0;
  let countryScore = 0;
  let acceptanceScore = 0;

  // IELTS Score (0-30 points)
  const ieltsDiff = profile.ieltsScore - university.ielts_requirement;
  if (ieltsDiff >= 1.0) {
    ieltsScore = 30;
    reasons.push('Your IELTS score comfortably exceeds the requirement');
  } else if (ieltsDiff >= 0.5) {
    ieltsScore = 25;
    reasons.push('Your IELTS score meets the requirement with margin');
  } else if (ieltsDiff >= 0) {
    ieltsScore = 18;
    reasons.push('Your IELTS score meets the minimum requirement');
  } else if (ieltsDiff >= -0.5) {
    ieltsScore = 8;
    reasons.push('Your IELTS score is slightly below the requirement');
  } else {
    ieltsScore = 0;
    reasons.push('Your IELTS score is below the requirement');
  }

  // Budget Score (0-30 points)
  const tuitionMax = university.tuition_max || 50000;
  const tuitionMin = university.tuition_min || 0;
  const tuitionMid = (tuitionMax + tuitionMin) / 2;

  if (profile.budgetMax >= tuitionMax) {
    budgetScore = 30;
    reasons.push('Tuition fits within your budget');
  } else if (profile.budgetMax >= tuitionMid) {
    budgetScore = 20;
    reasons.push('Tuition is at the upper end of your budget');
  } else if (profile.budgetMax >= tuitionMin) {
    budgetScore = 10;
    reasons.push('Some programs may fit your budget');
  } else {
    budgetScore = 0;
    reasons.push('Tuition exceeds your budget');
  }

  // Scholarship bonus
  if (university.has_scholarship && profile.budgetMax < tuitionMax) {
    budgetScore = Math.min(30, budgetScore + 10);
    reasons.push('Scholarships available to offset costs');
  }

  // Country Preference (0-20 points)
  if (profile.preferredCountries.length === 0) {
    countryScore = 15; // No preference = neutral
  } else {
    const countryMapping: Record<string, string[]> = {
      US: ['United States'],
      UK: ['United Kingdom'],
      CA: ['Canada'],
      AU: ['Australia'],
      DE: ['Germany'],
      FR: ['France'],
      SG: ['Singapore'],
      NL: ['Netherlands'],
      CH: ['Switzerland'],
    };

    const matchedCountry = profile.preferredCountries.some((code) =>
      countryMapping[code]?.includes(university.country)
    );

    if (matchedCountry) {
      countryScore = 20;
      reasons.push(`Located in your preferred country (${university.country})`);
    } else {
      countryScore = 5;
    }
  }

  // Acceptance Rate Score (0-20 points)
  const rate = university.acceptance_rate;
  if (rate !== null && rate !== undefined) {
    if (rate >= 50) {
      acceptanceScore = 20;
      reasons.push(`High acceptance rate (${rate}%)`);
    } else if (rate >= 30) {
      acceptanceScore = 15;
      reasons.push(`Moderate acceptance rate (${rate}%)`);
    } else if (rate >= 15) {
      acceptanceScore = 8;
      reasons.push(`Competitive acceptance rate (${rate}%)`);
    } else {
      acceptanceScore = 3;
      reasons.push(`Highly selective (${rate}% acceptance rate)`);
    }
  } else {
    acceptanceScore = 10; // Unknown = neutral
  }

  return { ieltsScore, budgetScore, countryScore, acceptanceScore, reasons };
}

export function getRecommendations(
  universities: University[],
  profile: StudentProfile
): { safe: ScoredUniversity[]; match: ScoredUniversity[]; ambitious: ScoredUniversity[] } {
  const scored: ScoredUniversity[] = universities.map((uni) => {
    const breakdown = calculateScore(uni, profile);
    const totalScore =
      breakdown.ieltsScore + breakdown.budgetScore + breakdown.countryScore + breakdown.acceptanceScore;

    let category: 'safe' | 'match' | 'ambitious';
    if (totalScore >= 70) {
      category = 'safe';
    } else if (totalScore >= 45) {
      category = 'match';
    } else {
      category = 'ambitious';
    }

    return {
      ...uni,
      score: totalScore,
      category,
      reasons: breakdown.reasons.filter((r) => r.length > 0),
    };
  });

  // Sort each category by score
  const safe = scored
    .filter((u) => u.category === 'safe')
    .sort((a, b) => b.score - a.score)
    .slice(0, 5);
  const match = scored
    .filter((u) => u.category === 'match')
    .sort((a, b) => b.score - a.score)
    .slice(0, 5);
  const ambitious = scored
    .filter((u) => u.category === 'ambitious')
    .sort((a, b) => b.score - a.score)
    .slice(0, 5);

  return { safe, match, ambitious };
}

// ==================== Gemini AI Chatbot ====================

const GEMINI_API_KEY = import.meta.env.VITE_GEMINI_API_KEY;
const GEMINI_MODEL = 'gemini-2.0-flash';
const GEMINI_URL = `https://generativelanguage.googleapis.com/v1beta/models/${GEMINI_MODEL}:generateContent?key=${GEMINI_API_KEY}`;

// Cache for university data so we don't re-fetch every message
let cachedUniversities: University[] | null = null;
let cachedPrograms: Program[] | null = null;

async function getUniversityData(): Promise<University[]> {
  if (cachedUniversities) return cachedUniversities;
  try {
    const data = await fetchUniversities();
    if (data.length > 0) {
      cachedUniversities = data;
      return data;
    }
  } catch (e) {
    console.error('Failed to load university data for chatbot:', e);
  }
  return [];
}

async function getProgramData(): Promise<Program[]> {
  if (cachedPrograms) return cachedPrograms;
  try {
    const data = await fetchPrograms();
    if (data.length > 0) {
      cachedPrograms = data;
      return data;
    }
  } catch (e) {
    console.error('Failed to load program data for chatbot:', e);
  }
  return [];
}

function buildSystemPrompt(universities: University[], programs: Program[]): string {
  // Strip heavy properties like long descriptions or image URLs to optimize JSON size,
  // but keep all critical data for the AI to reason about every single university.
  const uniData = universities.map(u => ({
    name: u.name,
    country: u.country,
    tuition: u.tuition_range,
    ielts: u.ielts_requirement,
    deadline: u.deadline,
    scholarships: u.has_scholarship,
    ranking: u.ranking || 'Unranked',
    acceptance: u.acceptance_rate ? `${u.acceptance_rate}%` : 'Unknown'
  }));

  const progData = programs.map(p => ({
    name: p.name,
    type: p.type,
    funding: p.fundingAmount,
    countries: p.countries.join(', '),
    deadline: p.deadline
  }));

  return `You are UniSearch AI Assistant — a highly intelligent, precise, and friendly advisor for international students looking for universities abroad. 
You are powered by a massive, real-world database of universities and scholarships which has been injected directly into your context below.

Your personality:
- Friendly, encouraging, and highly professional
- Give extremely specific, data-driven answers using ONLY the injected database
- Be concise but informative — use bullet points and formatting
- When mentioning universities, always include relevant stats (tuition, IELTS, ranking)
- If asked about a university not in the database, clearly state that it is not in your current database.
- Never hallucinate data.

[DATABASE INJECTION BEGIN]

=== UNIVERSITIES (${uniData.length} records) ===
${JSON.stringify(uniData)}

=== SCHOLARSHIP PROGRAMS (${progData.length} records) ===
${JSON.stringify(progData)}

[DATABASE INJECTION END]

Instructions for answering:
1. If the user asks for cheapest/most affordable options, scan the entire database array and pick the actual lowest tuition ones.
2. If the user asks about a specific country, list the best matches from that country based on their query.
3. If they ask about scholarships, mention the ones from the SCHOLARSHIP PROGRAMS array, or universities with scholarships: true.
4. Format your responses beautifully using markdown.`;
}

async function callGemini(
  userMessage: string,
  conversationHistory: { role: string; text: string }[],
  universities: University[],
  programs: Program[]
): Promise<string | null> {
  if (!GEMINI_API_KEY || GEMINI_API_KEY === 'your_gemini_api_key_here' || GEMINI_API_KEY === '') {
    return null; // Fall back to smart local logic
  }

  try {
    const systemPrompt = buildSystemPrompt(universities, programs);

    // Build conversation contents for Gemini
    const contents: Array<{ role: string; parts: Array<{ text: string }> }> = [];

    // Add conversation history (last 10 messages for context window)
    const recentHistory = conversationHistory.slice(-10);
    for (const msg of recentHistory) {
      contents.push({
        role: msg.role === 'user' ? 'user' : 'model',
        parts: [{ text: msg.text }],
      });
    }

    // Add current user message
    contents.push({
      role: 'user',
      parts: [{ text: userMessage }],
    });

    const response = await fetch(GEMINI_URL, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        system_instruction: {
          parts: [{ text: systemPrompt }],
        },
        contents,
        generationConfig: {
          temperature: 0.2, // Low temperature for high accuracy on database facts
          topP: 0.9,
          maxOutputTokens: 1024,
        },
      }),
    });

    if (!response.ok) {
      console.error('Gemini API error:', response.status, await response.text());
      return null;
    }

    const data = await response.json();
    const text = data?.candidates?.[0]?.content?.parts?.[0]?.text;

    if (text) {
      return text.trim();
    }

    return null;
  } catch (error) {
    console.error('Gemini API call failed:', error);
    return null;
  }
}

export async function getChatbotResponse(
  userMessage: string,
  conversationHistory: { role: string; text: string }[]
): Promise<string> {
  const universities = await getUniversityData();
  const programs = await getProgramData();

  // Try Gemini first
  const geminiResponse = await callGemini(userMessage, conversationHistory, universities, programs);
  if (geminiResponse) {
    return geminiResponse;
  }

  // Fallback to fuzzy-search offline bot if Gemini is unavailable
  return getSmartResponse(userMessage, universities, programs);
}

// ==================== Offline Fuzzy Fallback ====================

function getSmartResponse(userMessage: string, universities: University[], programs: Program[]): string {
  const msg = userMessage.toLowerCase().trim();

  // 1. Basic Greetings & Farewells
  if (msg.match(/^(hi|hello|hey|good morning|good afternoon|greetings|sup|yo)$/)) {
    return "Hello! 👋 I'm your UniSearch Assistant (Running in Offline Mode).\n\nEven without an internet API key, I can help you fuzzy-search our database for:\n🎓 Universities\n💰 Scholarships\n🌍 Countries\n\nJust type a university name or ask a question!";
  }

  if (msg.match(/^(thank|thanks|thx|ty|appreciated)/)) {
    return "You're welcome! 😊 Feel free to ask anything else. Good luck with your university search! 🎓✨";
  }

  // 2. Fuzzy Search Universities using Fuse.js
  if (universities.length > 0) {
    const fuse = new Fuse(universities, {
      keys: ['name', 'country', 'location'],
      threshold: 0.3, // 0.0 requires perfect match, 1.0 matches anything
      distance: 100,
    });

    // We only want to trigger fuzzy search if the user typed something longer than 3 chars
    // and it isn't a general keyword like 'scholarship'
    const ignoreWords = ['scholarship', 'funding', 'tuition', 'ielts', 'deadline', 'cheap', 'best', 'compare', 'visa'];
    const isGeneralQuery = ignoreWords.some(w => msg.includes(w));

    if (msg.length > 3 && !isGeneralQuery) {
      const results = fuse.search(msg);
      
      if (results.length > 0) {
        // If we found a very confident match (score close to 0)
        const bestMatch = results[0].item;
        
        // If they just asked about a country, list the top ones in that country
        const isCountryQuery = msg.match(/^(usa|uk|canada|australia|germany|france|singapore|netherlands|switzerland)$/);
        
        if (isCountryQuery) {
            const countryUnis = universities.filter(u => u.country.toLowerCase().includes(msg));
            if (countryUnis.length > 0) {
                const uniList = countryUnis.slice(0, 5)
                .map((u) => `• ${u.name} — ${u.tuition_range}/year, IELTS ${u.ielts_requirement}+`)
                .join('\n');
                return `Here are some top universities in ${countryUnis[0].country}: ${countryUnis[0].country_flag}\n\n${uniList}\n\n💡 Want details on any specific one? Just type its name!`;
            }
        }

        // Return specific university details
        return `${bestMatch.country_flag} **${bestMatch.name}**\n📍 ${bestMatch.location}, ${bestMatch.country}\n\n` +
          `💰 Tuition: ${bestMatch.tuition_range}/year\n` +
          `📝 IELTS: ${bestMatch.ielts_requirement}+\n` +
          `📅 Deadline: ${bestMatch.deadline}\n` +
          (bestMatch.ranking ? `🏆 World Ranking: #${bestMatch.ranking}\n` : '') +
          (bestMatch.acceptance_rate ? `📊 Acceptance Rate: ${bestMatch.acceptance_rate}%\n` : '') +
          (bestMatch.has_scholarship ? `🎓 Scholarships: Available!\n` : '') +
          `\n\nClick on the university card above for full details!`;
      }
    }
  }

  // 3. Fallback General Queries
  if (msg.includes('scholarship') || msg.includes('funding')) {
    if (programs.length > 0) {
        const progList = programs.slice(0, 5).map(p => `• **${p.name}** (${p.countries[0]}) - ${p.fundingAmount}`).join('\n');
        return `We have ${programs.length} Special Scholarship Programs in our database! Here are a few top ones:\n\n${progList}\n\nHead over to the Programs section to view them all!`;
    }
    return "We have many universities with scholarships! 💰 Use the Scholarship filter to find them.";
  }

  if (msg.includes('tuition') || msg.includes('cheap') || msg.includes('affordable')) {
    const sorted = [...universities].sort((a, b) => (a.tuition_min || 0) - (b.tuition_min || 0));
    const cheapest3 = sorted.slice(0, 3);
    return `💰 Most Affordable Universities in our database:\n\n` +
      cheapest3.map((u) => `• ${u.country_flag} ${u.name} — ${u.tuition_range}`).join('\n') +
      `\n\n💡 Use the tuition range filter to find universities within your budget!`;
  }

  if (msg.includes('ielts')) {
    const byIelts = [...universities].sort((a, b) => a.ielts_requirement - b.ielts_requirement);
    const lowest = byIelts[0];
    return `IELTS requirements range from ${lowest.ielts_requirement} upwards.\n\n` +
      `✅ Easiest entry (${lowest.ielts_requirement}+): ${lowest.country_flag} ${lowest.name}\n\n` +
      `💡 Tip: Use the IELTS filter to find universities matching your exact score!`;
  }

  // Default
  return `I'm running in Offline Mode without an AI API Key, so I can only do basic keyword and fuzzy searches.\n\nTry:\n🎓 Typing a university name (e.g., "MIT", "Oxford", "Toronto")\n🌍 Typing a country (e.g., "Canada")\n💰 Asking about "scholarships" or "cheap" tuition`;
}
