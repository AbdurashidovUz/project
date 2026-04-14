import fs from 'fs';
import path from 'path';

const deadUrlId = '1523050854058-8df90110c9f1';
const liveUrlId = '1541339907198-e08756dedf3f';

function walkDir(dir) {
  let results = [];
  const list = fs.readdirSync(dir);
  list.forEach((file) => {
    file = path.join(dir, file);
    const stat = fs.statSync(file);
    if (stat && stat.isDirectory()) {
      results = results.concat(walkDir(file));
    } else if (file.endsWith('.ts') || file.endsWith('.tsx')) {
      results.push(file);
    }
  });
  return results;
}

const files = walkDir(path.join(process.cwd(), 'src'));
files.forEach(file => {
  let content = fs.readFileSync(file, 'utf8');
  if (content.includes(deadUrlId)) {
    content = content.replace(new RegExp(deadUrlId, 'g'), liveUrlId);
    fs.writeFileSync(file, content, 'utf8');
    console.log(`Updated ${file}`);
  }
});
