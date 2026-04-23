import { supabase } from './supabase';
import type { University, Program, UserProfile } from './database.types';

// ==================== Timeout Helper ====================

/**
 * Races a Supabase query (PromiseLike) against a timeout.
 * Resolves with `fallback` if the timeout fires first.
 */
async function withTimeout<T>(
  thenable: PromiseLike<T>,
  fallback: T,
  ms = 5000
): Promise<T> {
  return Promise.race([
    Promise.resolve(thenable),
    new Promise<T>((resolve) => setTimeout(() => resolve(fallback), ms)),
  ]);
}

// ==================== Universities ====================

export interface UniversityFilters {
  countries?: string[];
  tuitionRange?: [number, number];
  ieltsScore?: number;
  hasScholarship?: boolean;
  searchQuery?: string;
}

export async function fetchUniversities(filters?: UniversityFilters): Promise<University[]> {
  let query = supabase.from('universities').select('*');

  if (filters?.countries && filters.countries.length > 0) {
    query = query.in('country', filters.countries);
  }

  if (filters?.hasScholarship) {
    query = query.eq('has_scholarship', true);
  }

  if (filters?.ieltsScore && filters.ieltsScore > 0) {
    query = query.lte('ielts_requirement', filters.ieltsScore);
  }

  if (filters?.tuitionRange) {
    const [min, max] = filters.tuitionRange;
    if (min > 0) query = query.gte('tuition_min', min);
    if (max < 100000) query = query.lte('tuition_max', max);
  }

  if (filters?.searchQuery) {
    const q = filters.searchQuery;
    query = query.or(`name.ilike.%${q}%,country.ilike.%${q}%,location.ilike.%${q}%`);
  }

  query = query.order('ranking', { ascending: true, nullsFirst: false });

  const { data, error } = await withTimeout(
    query,
    { data: null, error: new Error('timeout') } as any
  );

  if (error || !data) {
    console.warn('Supabase unavailable, using mock data:', error);
    return [];
  }

  return data;
}

export async function fetchUniversityById(id: string): Promise<University | null> {
  const { data, error } = await withTimeout(
    supabase.from('universities').select('*').eq('id', id).single(),
    { data: null, error: new Error('timeout') } as any
  );

  if (error || !data) {
    console.warn('Could not fetch university:', error);
    return null;
  }

  return data;
}

// ==================== Programs ====================

export async function fetchPrograms(searchQuery?: string): Promise<Program[]> {
  let query = supabase.from('programs').select('*');

  if (searchQuery) {
    query = query.or(`name.ilike.%${searchQuery}%,type.ilike.%${searchQuery}%`);
  }

  query = query.order('deadline', { ascending: true });

  const { data, error } = await withTimeout(
    query,
    { data: null, error: new Error('timeout') } as any
  );

  if (error || !data) {
    console.warn('Supabase unavailable, using mock data:', error);
    return [];
  }

  return data;
}

// ==================== Saved Universities ====================

export async function getSavedUniversities(userId: string): Promise<string[]> {
  const { data, error } = await supabase
    .from('saved_universities')
    .select('university_id')
    .eq('user_id', userId);

  if (error) {
    console.error('Error fetching saved universities:', error);
    return [];
  }

  return data?.map((s: any) => s.university_id) || [];
}

export async function saveUniversity(userId: string, universityId: string): Promise<boolean> {
  const { error } = await supabase
    .from('saved_universities')
    .insert({ user_id: userId, university_id: universityId });

  if (error) {
    console.error('Error saving university:', error);
    return false;
  }

  return true;
}

export async function unsaveUniversity(userId: string, universityId: string): Promise<boolean> {
  const { error } = await supabase
    .from('saved_universities')
    .delete()
    .eq('user_id', userId)
    .eq('university_id', universityId);

  if (error) {
    console.error('Error unsaving university:', error);
    return false;
  }

  return true;
}

// ==================== User Profile ====================

export async function getUserProfile(userId: string): Promise<UserProfile | null> {
  const { data, error } = await withTimeout(
    supabase.from('user_profiles').select('*').eq('id', userId).single(),
    { data: null, error: new Error('timeout') } as any
  );

  if (error) {
    if (error.message !== 'timeout') {
      console.error('Error fetching user profile:', error);
    }
    return null;
  }

  return data;
}

export async function updateUserProfile(
  userId: string,
  updates: Partial<Omit<UserProfile, 'id' | 'created_at' | 'updated_at'>>
): Promise<UserProfile | null> {
  const { data, error } = await withTimeout(
    supabase
      .from('user_profiles')
      // @ts-ignore
      .update({ ...updates, updated_at: new Date().toISOString() })
      .eq('id', userId)
      .select()
      .single(),
    { data: null, error: new Error('timeout') } as any
  );

  if (error) {
    console.error('Error updating user profile:', error);
    return null;
  }

  return data;
}

export async function createUserProfile(
  userId: string,
  fullName: string,
  email: string
): Promise<UserProfile | null> {
  const { data, error } = await withTimeout(
    supabase
      .from('user_profiles')
      // @ts-ignore
      .insert({
        id: userId,
        full_name: fullName,
        email: email,
        preferred_countries: [],
      })
      .select()
      .single(),
    { data: null, error: new Error('timeout') } as any
  );

  if (error) {
    console.error('Error creating user profile:', error);
    return null;
  }

  return data;
}
