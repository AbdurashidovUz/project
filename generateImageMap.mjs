import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';

const supabaseUrl = 'https://djnegfctttsxbjbheqag.supabase.co';
const supabaseKey = 'sb_publishable_zgamLbMVWCo3UzZviHPBUw_3fIvptK5';
const supabase = createClient(supabaseUrl, supabaseKey);

async function getWikimediaImage(universityName) {
  try {
    const query = encodeURIComponent(universityName);
    const url = `https://commons.wikimedia.org/w/api.php?action=query&generator=search&gsrnamespace=6&gsrsearch=${query}&gsrlimit=1&prop=imageinfo&iiprop=url&format=json`;
    const response = await fetch(url);
    const data = await response.json();
    if (data.query && data.query.pages) {
      const pages = data.query.pages;
      const firstPageId = Object.keys(pages)[0];
      const imageInfo = pages[firstPageId].imageinfo;
      if (imageInfo && imageInfo.length > 0) {
        return imageInfo[0].url;
      }
    }
  } catch (e) {}
  return null;
}

async function main() {
  console.log('Fetching universities...');
  const { data: universities } = await supabase.from('universities').select('name');
  
  const mapping = {};
  const outPath = path.join(process.cwd(), 'src', 'data', 'universityImages.json');
  
  if (fs.existsSync(outPath)) {
     try { Object.assign(mapping, JSON.parse(fs.readFileSync(outPath, 'utf8'))); } catch(e){}
  }
  
  const queue = universities.filter(u => !mapping[u.name]);
  console.log(`Need to fetch ${queue.length} more.`);

  let inFlight = 0;
  const BATCH = 30; // higher batch size for speed
  for (let i = 0; i < queue.length; i += BATCH) {
     const batch = queue.slice(i, i + BATCH);
     await Promise.all(batch.map(async (uni) => {
        const img = await getWikimediaImage(uni.name);
        if (img) mapping[uni.name] = img;
     }));
     console.log(`Processed ${Math.min(i + BATCH, queue.length)} / ${queue.length}`);
     fs.writeFileSync(outPath, JSON.stringify(mapping, null, 2));
  }
  
  // Also recreate the TS file!
  const tsPath = path.join(process.cwd(), 'src', 'data', 'universityImages.ts');
  const tsContent = `export const universityImages: Record<string, string> = ${JSON.stringify(mapping, null, 2)};\n`;
  fs.writeFileSync(tsPath, tsContent, 'utf8');
}

main();
