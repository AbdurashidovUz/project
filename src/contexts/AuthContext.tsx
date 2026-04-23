import { createContext, useContext, useEffect, useState, ReactNode, useCallback } from 'react';
import { User, AuthError } from '@supabase/supabase-js';
import { supabase } from '../lib/supabase';
import { getUserProfile, createUserProfile } from '../lib/api';
import type { UserProfile } from '../lib/database.types';

interface AuthContextType {
  user: User | null;
  profile: UserProfile | null;
  loading: boolean;
  signUp: (email: string, password: string, fullName: string) => Promise<{ error: AuthError | null }>;
  signIn: (email: string, password: string) => Promise<{ error: AuthError | null }>;
  signOut: () => Promise<void>;
  refreshProfile: () => Promise<void>;
}

const AuthContext = createContext<AuthContextType | undefined>(undefined);

export function AuthProvider({ children }: { children: ReactNode }) {
  const [user, setUser] = useState<User | null>(null);
  const [profile, setProfile] = useState<UserProfile | null>(null);
  const [loading, setLoading] = useState(true);

  const loadProfile = useCallback(async (userId: string) => {
    try {
      // Race profile loading against a 5s timeout
      const userProfile = await Promise.race([
        getUserProfile(userId),
        new Promise<null>((resolve) => setTimeout(() => resolve(null), 5000))
      ]);
      setProfile(userProfile);
    } catch (err) {
      console.error('Error in loadProfile:', err);
      setProfile(null);
    }
  }, []);

  const refreshProfile = async () => {
    if (user) {
      await loadProfile(user.id);
    }
  };

  useEffect(() => {
    let cancelled = false;

    // Safety timeout for initial load
    const initialTimeout = setTimeout(() => {
      if (!cancelled) setLoading(false);
    }, 6000);

    // Initial session check
    supabase.auth.getSession()
      .then(async ({ data: { session } }) => {
        if (cancelled) return;
        clearTimeout(initialTimeout);
        
        const currentUser = session?.user ?? null;
        setUser(currentUser);
        
        if (currentUser) {
          await loadProfile(currentUser.id);
        }
        setLoading(false);
      })
      .catch((err) => {
        console.error('Session check error:', err);
        if (!cancelled) setLoading(false);
        clearTimeout(initialTimeout);
      });

    // Listen for auth changes
    const { data: { subscription } } = supabase.auth.onAuthStateChange(
      async (event, session) => {
        if (cancelled) return;
        
        const currentUser = session?.user ?? null;
        
        if (event === 'SIGNED_OUT' || !currentUser) {
          setUser(null);
          setProfile(null);
          setLoading(false);
          return;
        }

        setUser(currentUser);
        
        if (event === 'SIGNED_IN' || event === 'USER_UPDATED' || (event === 'INITIAL_SESSION' && !profile)) {
          setLoading(true); // Re-show loading if we need to fetch profile
          try {
            let userProfile = await getUserProfile(currentUser.id);
            if (!userProfile && event === 'SIGNED_IN') {
              const name = currentUser.user_metadata?.full_name || currentUser.email || '';
              const email = currentUser.email || '';
              userProfile = await createUserProfile(currentUser.id, name, email);
            }
            if (!cancelled) setProfile(userProfile);
          } catch (err) {
            console.error('Auth change profile fetch error:', err);
            if (!cancelled) setProfile(null);
          }
        }
        
        if (!cancelled) setLoading(false);
      }
    );

    return () => {
      cancelled = true;
      clearTimeout(initialTimeout);
      subscription.unsubscribe();
    };
  }, [loadProfile, profile]);

  const withAuthTimeout = <T,>(promise: Promise<T>, timeoutMs = 7000): Promise<T> =>
    Promise.race([
      promise,
      new Promise<T>((_, reject) =>
        setTimeout(() => reject(new Error('Auth request timed out. Please check your connection.')), timeoutMs)
      ),
    ]);

  const signUp = async (email: string, password: string, fullName: string) => {
    try {
      const { error } = await withAuthTimeout(
        supabase.auth.signUp({
          email,
          password,
          options: { data: { full_name: fullName } },
        })
      );
      return { error };
    } catch (err: any) {
      return { error: { message: err.message } as any };
    }
  };

  const signIn = async (email: string, password: string) => {
    try {
      const { error } = await withAuthTimeout(
        supabase.auth.signInWithPassword({ email, password })
      );
      return { error };
    } catch (err: any) {
      return { error: { message: err.message } as any };
    }
  };

  const signOut = async () => {
    // 1. Optimistic UI update
    setUser(null);
    setProfile(null);
    setLoading(false);

    // 2. Clear local storage thoroughly
    const keysToRemove = ['supabase.auth.token', 'sb-djnegfctttsxbjbheqag-auth-token'];
    keysToRemove.forEach(k => localStorage.removeItem(k));
    Object.keys(localStorage).forEach(k => {
      if (k.startsWith('sb-') || k.includes('auth-token')) {
        localStorage.removeItem(k);
      }
    });

    // 3. Network sign out
    try {
      await withAuthTimeout(supabase.auth.signOut(), 3000);
    } catch (err) {
      console.warn('Network signout failed or timed out, but local state was cleared:', err);
    }
  };

  return (
    <AuthContext.Provider
      value={{
        user,
        profile,
        loading,
        signUp,
        signIn,
        signOut,
        refreshProfile,
      }}
    >
      {children}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  const context = useContext(AuthContext);
  if (context === undefined) {
    throw new Error('useAuth must be used within an AuthProvider');
  }
  return context;
}

