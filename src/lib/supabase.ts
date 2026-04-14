import { createClient } from '@supabase/supabase-js';
import type { Database } from './database.types';

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

// A valid Supabase anon key is a JWT (3 base64 segments separated by dots).
// If the key is missing or not a JWT, disable background auth refresh to
// prevent network errors when the backend is offline.
const isValidKey = typeof supabaseAnonKey === 'string' && supabaseAnonKey.split('.').length === 3;

if (!supabaseUrl || !isValidKey) {
  console.warn(
    'Supabase credentials are missing or invalid. The app will use local mock data.'
  );
}

export const supabase = createClient<Database>(
  supabaseUrl || 'https://placeholder.supabase.co',
  supabaseAnonKey || 'placeholder',
  {
    auth: {
      // Disable background token refresh when credentials are invalid —
      // prevents ERR_NAME_NOT_RESOLVED / Failed to fetch console errors.
      autoRefreshToken: isValidKey,
      persistSession: isValidKey,
      detectSessionInUrl: isValidKey,
    },
  }
);
