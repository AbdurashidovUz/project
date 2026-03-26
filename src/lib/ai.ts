import type { University } from './database.types';

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

import { fetchUniversities } from './api';

const GEMINI_API_KEY = import.meta.env.VITE_GEMINI_API_KEY;
const GEMINI_MODEL = 'gemini-2.0-flash';
const GEMINI_URL = `https://generativelanguage.googleapis.com/v1beta/models/${GEMINI_MODEL}:generateContent?key=${GEMINI_API_KEY}`;

// Cache for university data so we don't re-fetch every message
let cachedUniversities: University[] | null = null;

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

function buildSystemPrompt(universities: University[]): string {
  // Build a concise summary of university data for context
  const countryGroups: Record<string, { count: number; tuitionRange: string; ieltsRange: string; examples: string[] }> = {};

  for (const uni of universities) {
    if (!countryGroups[uni.country]) {
      countryGroups[uni.country] = {
        count: 0,
        tuitionRange: '',
        ieltsRange: '',
        examples: [],
      };
    }
    const group = countryGroups[uni.country];
    group.count++;
    if (group.examples.length < 3) {
      group.examples.push(
        `${uni.name} (Rank #${uni.ranking || 'N/A'}, Tuition: ${uni.tuition_range}, IELTS: ${uni.ielts_requirement}+${uni.has_scholarship ? ', Scholarships available' : ''})`
      );
    }
  }

  const countrySummaries = Object.entries(countryGroups)
    .map(([country, g]) => `${country} (${g.count} universities): ${g.examples.join('; ')}`)
    .join('\n');

  // Top 10 by ranking for quick reference
  const topRanked = [...universities]
    .filter(u => u.ranking)
    .sort((a, b) => (a.ranking || 999) - (b.ranking || 999))
    .slice(0, 10)
    .map(u => `#${u.ranking} ${u.name} (${u.country}) - ${u.tuition_range}, IELTS ${u.ielts_requirement}`)
    .join('\n');

  // Cheapest 5
  const cheapest = [...universities]
    .sort((a, b) => (a.tuition_min || 0) - (b.tuition_min || 0))
    .slice(0, 5)
    .map(u => `${u.name} (${u.country}) - ${u.tuition_range}`)
    .join('\n');

  // With scholarships
  const scholarshipCount = universities.filter(u => u.has_scholarship).length;

  return `You are UniSearch AI Assistant — a helpful, friendly advisor for international students looking for universities abroad. You have access to a real database of ${universities.length} universities across ${Object.keys(countryGroups).length} countries.

Your personality:
- Friendly, encouraging, and professional
- Use emojis naturally but don't overdo it
- Give specific data-driven answers using the university database
- Be concise but informative — use bullet points and formatting
- When mentioning universities, include relevant stats (ranking, tuition, IELTS)
- Always mention scholarships when relevant
- If asked about something outside your data, be honest and suggest where to find info

Key facts from the database:
- Total universities: ${universities.length}
- Countries covered: ${Object.keys(countryGroups).length}
- Universities with scholarships: ${scholarshipCount}

Top 10 by world ranking:
${topRanked}

Most affordable options:
${cheapest}

Universities by country:
${countrySummaries}

Special scholarship programs available in our Programs section:
- Erasmus Mundus (EU) - Full funding
- Chevening (UK) - Full funding  
- Fulbright (USA) - Full funding
- DAAD (Germany) - Monthly stipend
- Stipendium Hungaricum (Hungary) - Full funding
- Swedish Institute Scholarships - Full funding
- Australia Awards - Full funding
- Eiffel Excellence (France) - Monthly allowance

Tips to mention when relevant:
- Germany has very low/free tuition for international students
- Users can compare up to 3 universities using the Compare feature
- The AI Recommendation tool gives Safe/Match/Ambitious classifications
- Users can save universities to their profile after signing up
- The filters above can narrow by country, IELTS, tuition, and scholarships`;
}

async function callGemini(
  userMessage: string,
  conversationHistory: { role: string; text: string }[],
  universities: University[]
): Promise<string | null> {
  if (!GEMINI_API_KEY || GEMINI_API_KEY === 'your_gemini_api_key_here') {
    return null; // Fall back to keyword-based
  }

  try {
    const systemPrompt = buildSystemPrompt(universities);

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
          temperature: 0.7,
          topP: 0.9,
          maxOutputTokens: 1024,
        },
        safetySettings: [
          { category: 'HARM_CATEGORY_HARASSMENT', threshold: 'BLOCK_NONE' },
          { category: 'HARM_CATEGORY_HATE_SPEECH', threshold: 'BLOCK_NONE' },
          { category: 'HARM_CATEGORY_SEXUALLY_EXPLICIT', threshold: 'BLOCK_NONE' },
          { category: 'HARM_CATEGORY_DANGEROUS_CONTENT', threshold: 'BLOCK_NONE' },
        ],
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

  // Try Gemini first
  const geminiResponse = await callGemini(userMessage, conversationHistory, universities);
  if (geminiResponse) {
    return geminiResponse;
  }

  // Fallback to keyword-based if Gemini is unavailable
  return getSmartResponse(userMessage, universities);
}

function getSmartResponse(userMessage: string, universities: University[]): string {
  const msg = userMessage.toLowerCase().trim();

  // Greetings
  if (msg.match(/^(hi|hello|hey|good morning|good afternoon|greetings|sup|yo)/)) {
    return "Hello! 👋 I'm your UniSearch Assistant. I can help you with:\n\n🎓 University recommendations\n💰 Scholarships & funding\n📝 Admission requirements\n📅 Application deadlines\n🌍 Country information\n💵 Tuition & costs\n📊 IELTS requirements\n🔄 Comparing universities\n\nJust ask me anything!";
  }

  // Thanks
  if (msg.match(/^(thank|thanks|thx|ty|appreciated)/)) {
    return "You're welcome! 😊 Feel free to ask anything else. Good luck with your university search! 🎓✨";
  }

  // Bye
  if (msg.match(/^(bye|goodbye|see you|later|quit)/)) {
    return "Goodbye! 👋 Best of luck with your applications. Come back anytime you need help! 🎓";
  }

  // Specific country queries — use real data
  const countryKeywords: Record<string, string> = {
    'usa': 'United States', 'united states': 'United States', 'america': 'United States', 'us': 'United States',
    'uk': 'United Kingdom', 'united kingdom': 'United Kingdom', 'england': 'United Kingdom', 'britain': 'United Kingdom',
    'canada': 'Canada', 'canadian': 'Canada',
    'australia': 'Australia', 'australian': 'Australia',
    'germany': 'Germany', 'german': 'Germany',
    'france': 'France', 'french': 'France',
    'singapore': 'Singapore',
    'netherlands': 'Netherlands', 'dutch': 'Netherlands', 'holland': 'Netherlands',
    'switzerland': 'Switzerland', 'swiss': 'Switzerland',
  };

  for (const [keyword, country] of Object.entries(countryKeywords)) {
    if (msg.includes(keyword) && universities.length > 0) {
      const countryUnis = universities.filter((u) => u.country === country);
      if (countryUnis.length > 0) {
        const uniList = countryUnis
          .map((u) => `• ${u.name} — ${u.tuition_range}/year, IELTS ${u.ielts_requirement}+${u.has_scholarship ? ' 🎓 Scholarship' : ''}`)
          .join('\n');
        const cheapest = countryUnis.reduce((a, b) => (a.tuition_min || 0) < (b.tuition_min || 0) ? a : b);
        return `Here are our universities in ${country}: ${countryUnis[0].country_flag}\n\n${uniList}\n\n💡 Most affordable: ${cheapest.name} (${cheapest.tuition_range})\n\nWant details on any specific university? Click on it in the Universities section above!`;
      }
    }
  }

  // Specific university name search
  if (universities.length > 0) {
    const matchedUni = universities.find((u) => {
      const nameParts = u.name.toLowerCase().replace(/university|college|institute|of/g, '').trim();
      return nameParts.length > 4 && msg.includes(nameParts);
    });
    if (matchedUni && msg.length > 4) {
      return `${matchedUni.country_flag} **${matchedUni.name}**\n📍 ${matchedUni.location}, ${matchedUni.country}\n\n` +
        `💰 Tuition: ${matchedUni.tuition_range}/year\n` +
        `📝 IELTS: ${matchedUni.ielts_requirement}+\n` +
        `📅 Deadline: ${matchedUni.deadline}\n` +
        (matchedUni.ranking ? `🏆 World Ranking: #${matchedUni.ranking}\n` : '') +
        (matchedUni.acceptance_rate ? `📊 Acceptance Rate: ${matchedUni.acceptance_rate}%\n` : '') +
        (matchedUni.has_scholarship ? `🎓 Scholarships: Available!\n` : '') +
        (matchedUni.website ? `\n🔗 Website: ${matchedUni.website}` : '') +
        `\n\nClick on the university card above for full details!`;
    }
  }

  // Recommendations
  if (msg.includes('recommend') || msg.includes('suggest') || msg.includes('best university') || msg.includes('which university') || msg.includes('where should')) {
    const withScholarships = universities.filter((u) => u.has_scholarship).length;
    return `I'd love to help you find the right university! 🎯\n\nWe have ${universities.length || 15} universities in our database${withScholarships > 0 ? ` (${withScholarships} with scholarships!)` : ''}.\n\nTo get personalized recommendations, try our AI Recommendation tool:\n1. Scroll to the "AI-Powered Recommendations" section\n2. Enter your GPA, IELTS score, and budget\n3. Get universities classified as Safe, Match, or Ambitious!\n\nOr tell me:\n• Which country interests you?\n• What's your budget?\n• What's your IELTS score?`;
  }

  // Scholarships
  if (msg.includes('scholarship') || msg.includes('funding') || msg.includes('financial aid') || msg.includes('free') || msg.includes('stipend')) {
    if (universities.length > 0) {
      const withScholarships = universities.filter((u) => u.has_scholarship);
      const affordable = universities.filter((u) => (u.tuition_min || 0) <= 5000);
      let response = `Great question about scholarships! 💰\n\n`;
      response += `📊 ${withScholarships.length} out of ${universities.length} universities in our database offer scholarships.\n\n`;
      if (affordable.length > 0) {
        response += `🏆 Most affordable options:\n`;
        response += affordable.map((u) => `• ${u.country_flag} ${u.name} — ${u.tuition_range}`).join('\n');
        response += '\n\n';
      }
      response += `We also have Special Scholarship Programs (Erasmus Mundus, Chevening, Fulbright, etc.) — check the Programs section!\n\nUse the Scholarship filter to see only universities with scholarships.`;
      return response;
    }
    return "We have many universities with scholarships! 💰\n\nTypes of scholarships available:\n• Merit-based (up to 50% off tuition)\n• Need-based financial aid\n• International student scholarships\n• Government scholarships (Erasmus, Chevening, Fulbright)\n\nUse the filter panel to show only universities with scholarships, or check our Special Scholarship Programs section!";
  }

  // IELTS
  if (msg.includes('ielts') || msg.includes('toefl') || msg.includes('english test') || msg.includes('language requirement') || msg.includes('duolingo')) {
    if (universities.length > 0) {
      const byIelts = [...universities].sort((a, b) => a.ielts_requirement - b.ielts_requirement);
      const lowest = byIelts[0];
      const highest = byIelts[byIelts.length - 1];
      return `IELTS requirements in our database range from ${lowest.ielts_requirement} to ${highest.ielts_requirement}:\n\n` +
        `✅ Easiest entry (${lowest.ielts_requirement}+): ${lowest.country_flag} ${lowest.name}\n` +
        `🔝 Highest requirement (${highest.ielts_requirement}+): ${highest.country_flag} ${highest.name}\n\n` +
        `By country:\n` +
        `🇩🇪 Germany: Usually 6.0-6.5\n` +
        `🇨🇦 Canada/🇦🇺 Australia: Usually 6.5\n` +
        `🇺🇸 USA: Usually 6.5-7.0\n` +
        `🇬🇧 UK: Usually 6.5-7.5\n\n` +
        `💡 Tip: Use the IELTS filter to find universities matching your exact score!`;
    }
    return "IELTS requirements by country:\n\n🇩🇪 Germany: 6.0-6.5\n🇨🇦 Canada: 6.5-7.0\n🇦🇺 Australia: 6.5-7.0\n🇺🇸 USA: 6.5-7.0\n🇬🇧 UK: 6.5-7.5\n\nMost universities also accept TOEFL (90+) or Duolingo (115+). Use our filters to find universities matching your score!";
  }

  // Deadlines
  if (msg.includes('deadline') || msg.includes('when to apply') || msg.includes('application date') || msg.includes('apply')) {
    if (universities.length > 0) {
      const urgent = universities.filter((u) => u.urgency === 'high');
      let response = "📅 Application deadlines from our database:\n\n";
      if (urgent.length > 0) {
        response += "⚠️ Upcoming deadlines:\n";
        response += urgent.slice(0, 5).map((u) => `• ${u.country_flag} ${u.name} — ${u.deadline}`).join('\n');
        response += '\n\n';
      }
      response += "General timeline:\n📅 Fall Intake (Sep): Apply Jan-Mar\n📅 Spring Intake (Jan): Apply Sep-Oct\n\n💡 Tip: Early applications often get better scholarships!";
      return response;
    }
    return "📅 General application timelines:\n\n• Fall Intake (Sep): Apply Jan-Mar\n• Spring Intake (Jan): Apply Sep-Oct\n• Summer Intake (May): Apply Nov-Jan\n\n⚠️ Apply early for better scholarship chances!";
  }

  // Tuition / Cost
  if (msg.includes('tuition') || msg.includes('cost') || msg.includes('fee') || msg.includes('expensive') || msg.includes('cheap') || msg.includes('affordable') || msg.includes('budget') || msg.includes('price')) {
    if (universities.length > 0) {
      const sorted = [...universities].sort((a, b) => (a.tuition_min || 0) - (b.tuition_min || 0));
      const cheapest3 = sorted.slice(0, 3);
      const expensive3 = sorted.slice(-3).reverse();
      return `💰 Tuition ranges in our database:\n\n` +
        `🏆 Most Affordable:\n` +
        cheapest3.map((u) => `• ${u.country_flag} ${u.name} — ${u.tuition_range}`).join('\n') +
        `\n\n💎 Premium:\n` +
        expensive3.map((u) => `• ${u.country_flag} ${u.name} — ${u.tuition_range}`).join('\n') +
        `\n\n💡 Use the tuition range filter to find universities within your budget!`;
    }
    return "💰 Tuition by country:\n\n• Germany/France: €0-€8,000/year\n• Canada: $20,000-$35,000/year\n• Australia: $30,000-$45,000/year\n• UK: $25,000-$40,000/year\n• USA: $30,000-$60,000/year\n\nUse the tuition filter to match your budget!";
  }

  // Compare
  if (msg.includes('compare') || msg.includes('comparison') || msg.includes('difference') || msg.includes('vs') || msg.includes('versus')) {
    return "📊 You can compare universities side-by-side!\n\n1. Click the purple ↔️ button on any university card\n2. Select up to 3 universities\n3. Scroll to the Compare section to see them compared across:\n   • Tuition fees\n   • IELTS requirements\n   • World ranking\n   • Acceptance rates\n   • Scholarships\n   • Student population\n\nTry it now — select some universities from the list above!";
  }

  // Admission / Requirements
  if (msg.includes('admission') || msg.includes('requirement') || msg.includes('gpa') || msg.includes('document') || msg.includes('how to apply') || msg.includes('sop') || msg.includes('statement')) {
    return "📝 Common admission requirements:\n\n📄 Documents needed:\n• Official transcripts\n• Bachelor's degree (for Master's)\n• IELTS/TOEFL score\n• Statement of Purpose (SOP)\n• 2-3 Letters of Recommendation\n• CV/Resume\n• Valid passport\n\n📊 Typical minimums:\n• GPA: 3.0/4.0 (competitive programs need 3.5+)\n• IELTS: 6.0-7.5 (varies by university)\n\n💡 Click on any university card to see its specific requirements!";
  }

  // Visa
  if (msg.includes('visa') || msg.includes('immigration') || msg.includes('work permit') || msg.includes('student visa')) {
    return "🛂 Student visa information by country:\n\n🇺🇸 USA: F-1 visa, OPT work permit after graduation\n🇬🇧 UK: Student visa, 2-year post-study work visa\n🇨🇦 Canada: Study permit, 3-year PGWP\n🇦🇺 Australia: Student visa (subclass 500), post-study work visa\n🇩🇪 Germany: Student visa, 18-month job search visa after graduation\n\n💡 Canada and Germany are especially immigration-friendly for students!\n\nCheck each country's embassy website for current requirements.";
  }

  // Central Asia / Uzbekistan specific
  if (msg.includes('uzbek') || msg.includes('central asia') || msg.includes('kazakhstan') || msg.includes('kyrgyz') || msg.includes('tajik') || msg.includes('turkmen')) {
    return "🌏 Great options for Central Asian students!\n\nPopular scholarship programs for your region:\n\n🇭🇺 Stipendium Hungaricum — Full funding for Uzbek students\n🇩🇪 DAAD — German government scholarships\n🇬🇧 Chevening — UK government scholarships\n🇪🇺 Erasmus Mundus — EU joint degree programs\n\n💡 Tips for Central Asian students:\n• Germany has very low tuition (€0-€5,000/year)\n• Hungary offers free education through SH\n• Many EU programs waive tuition with scholarships\n\nCheck our Programs section for scholarship details!";
  }

  // Rankings
  if (msg.includes('ranking') || msg.includes('top') || msg.includes('best') || msg.includes('#1') || msg.includes('world class')) {
    if (universities.length > 0) {
      const ranked = universities.filter((u) => u.ranking).sort((a, b) => (a.ranking || 999) - (b.ranking || 999));
      if (ranked.length > 0) {
        const top5 = ranked.slice(0, 5);
        return `🏆 Top universities in our database by world ranking:\n\n` +
          top5.map((u, i) => `${i + 1}. ${u.country_flag} ${u.name} — Rank #${u.ranking}`).join('\n') +
          `\n\n💡 Higher ranking doesn't always mean best fit! Consider tuition, location, and your profile match too.`;
      }
    }
    return "🏆 Our database includes top-ranked universities from MIT (#1) to Oxford (#3) and beyond!\n\nBrowse the university section above and sort by 'Ranking' to see them ordered. Remember — the best university is the one that fits YOUR profile!";
  }

  // Program fields
  if (msg.includes('computer science') || msg.includes('engineering') || msg.includes('business') || msg.includes('medicine') || msg.includes('law') || msg.includes('arts') || msg.includes('science') || msg.includes('program') || msg.includes('major') || msg.includes('field')) {
    const field = msg.includes('computer') ? 'Computer Science' :
      msg.includes('engineering') ? 'Engineering' :
      msg.includes('business') ? 'Business' :
      msg.includes('medicine') ? 'Medicine' :
      msg.includes('law') ? 'Law' : 'various fields';

    return `🎓 Interested in ${field}? Great choice!\n\nTop destinations for ${field}:\n` +
      `🇺🇸 USA — MIT, Stanford, Berkeley\n` +
      `🇬🇧 UK — Oxford, Cambridge, Imperial\n` +
      `🇨🇦 Canada — Toronto, UBC, Waterloo\n` +
      `🇩🇪 Germany — TUM, RWTH Aachen (low tuition!)\n\n` +
      `Most universities in our database offer ${field} programs at Bachelor's, Master's, and PhD levels.\n\n` +
      `💡 Use the search bar above to find specific programs, or try our AI Recommendation tool for personalized matches!`;
  }

  // How does this work / help
  if (msg.includes('how does') || msg.includes('what can you') || msg.includes('help') || msg.includes('what do you') || msg.includes('features')) {
    return "Here's what UniSearch can do for you! 🚀\n\n🔍 **Search** — Browse and filter universities by country, tuition, IELTS, scholarships\n📊 **Compare** — Side-by-side comparison of up to 3 universities\n🤖 **AI Match** — Get personalized Safe/Match/Ambitious recommendations\n💬 **Chat** — Ask me anything (that's what we're doing now!)\n❤️ **Save** — Save universities to your profile (sign up first)\n\nTry asking me about a specific country, university, or topic!";
  }

  // Default — catch-all with helpful suggestions
  return `I'm not sure I understood that fully, but I can help with:\n\n🎓 "Tell me about universities in Canada"\n💰 "Which universities have scholarships?"\n📝 "What IELTS score do I need?"\n📅 "When are the deadlines?"\n💵 "What are the cheapest universities?"\n🔄 "How do I compare universities?"\n🏆 "What are the top-ranked universities?"\n🛂 "Tell me about student visas"\n\nTry one of these or ask about any specific university!`;
}
