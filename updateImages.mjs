import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';

// Using the credentials from the .env file
const supabaseUrl = 'https://djnegfctttsxbjbheqag.supabase.co';
const supabaseKey = 'sb_publishable_zgamLbMVWCo3UzZviHPBUw_3fIvptK5';
const supabase = createClient(supabaseUrl, supabaseKey);

const DEFAULT_IMAGE = 'https://images.unsplash.com/photo-1562774053-701939374585?w=400&h=300&fit=crop&q=80';

async function getWikimediaImage(universityName) {
  try {
    const query = encodeURIComponent(`${universityName} campus building`);
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
    return null;
  } catch (error) {
    console.error(`Error fetching image for ${universityName}:`, error.message);
    return null;
  }
}

const sleep = (ms) => new Promise(resolve => setTimeout(resolve, ms));

async function main() {
  console.log('Fetching universities from database...');
  const { data: universities, error } = await supabase
    .from('universities')
    .select('id, name, image_url');

  if (error) {
    console.error('Error fetching universities:', error);
    process.exit(1);
  }

  console.log(`Found ${universities.length} universities.`);
  let updatedCount = 0;

  // Read the seed SQL file to update it as well
  const seedPath = path.join(process.cwd(), 'supabase', 'universities_seed.sql');
  let seedSql = fs.readFileSync(seedPath, 'utf8');

  for (const uni of universities) {
    if (uni.image_url === DEFAULT_IMAGE) {
      process.stdout.write(`Fetching image for ${uni.name}... `);
      const newImageUrl = await getWikimediaImage(uni.name);
      
      if (newImageUrl) {
        // Update database
        const { error: updateError } = await supabase
          .from('universities')
          .update({ image_url: newImageUrl })
          .eq('id', uni.id);
          
        if (updateError) {
          console.log(`❌ DB Update failed: ${updateError.message}`);
        } else {
          console.log(`✅ Success`);
          updatedCount++;
          
          // Update seed file (escape single quotes if any)
          const escapedName = uni.name.replace(/'/g, "''");
          // Finding the block for this university is tricky in SQL because the image url is not on the same line as the name.
          // Better approach: Replace the generic URL in the entire file, but there is a risk of replacing it for the wrong university.
          // Since almost all use the same, we can just do a targeted replace for this university's block.
          const regex = new RegExp(`('${escapedName}'[\\s\\S]*?)${DEFAULT_IMAGE.replace(/[.*+?^$\\{\\}()|[\\]\\\\]/g, '\\$&')}`);
          seedSql = seedSql.replace(regex, `$1${newImageUrl}`);
        }
      } else {
        console.log(`⚠️ No image found`);
      }
      
      // Delay to respect API rate limits
      await sleep(500);
    } else {
       // Already has a non-default image or no update needed
    }
  }

  // Write back to seed.sql
  fs.writeFileSync(seedPath, seedSql, 'utf8');
  console.log(`\nFinished! Updated ${updatedCount} universities.`);
}

main();
