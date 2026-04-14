export interface Database {
  public: {
    Tables: {
      universities: {
        Row: {
          id: string;
          name: string;
          country: string;
          country_flag: string;
          location: string;
          description: string;
          tuition_range: string;
          ielts_requirement: number;
          deadline: string;
          has_scholarship: boolean;
          image_url: string;
          urgency: 'high' | 'medium' | 'low' | null;
          ranking: number | null;
          acceptance_rate: number | null;
          student_population: number | null;
          international_students_pct: number | null;
          programs_offered: number | null;
          website: string | null;
          admission_url: string | null;
          tuition_min: number | null;
          tuition_max: number | null;
          created_at: string;
        };
        Insert: Omit<Database['public']['Tables']['universities']['Row'], 'created_at'> & {
          created_at?: string;
        };
        Update: Partial<Database['public']['Tables']['universities']['Insert']>;
      };
      programs: {
        Row: {
          id: string;
          name: string;
          type: 'scholarship' | 'exchange' | 'fellowship';
          description: string;
          countries: string[];
          country_flags: string[];
          funding_amount: string;
          program_level: string[];
          duration: string;
          fields_of_study: string[];
          eligibility: {
            gpa?: number;
            ieltsRequirement?: number;
            ageLimit?: string;
            nationality?: string[];
            other?: string[];
          };
          deadline: string;
          urgency: 'high' | 'medium' | 'low' | null;
          benefits: string[];
          application_process: string;
          website: string;
          image_url: string;
          has_full_funding: boolean;
          created_at: string;
        };
        Insert: Omit<Database['public']['Tables']['programs']['Row'], 'created_at'> & {
          created_at?: string;
        };
        Update: Partial<Database['public']['Tables']['programs']['Insert']>;
      };
      user_profiles: {
        Row: {
          id: string;
          full_name: string;
          email: string;
          gpa: number | null;
          ielts_score: number | null;
          budget_min: number | null;
          budget_max: number | null;
          preferred_countries: string[];
          academic_background: string | null;
          avatar_url: string | null;
          created_at: string;
          updated_at: string;
        };
        Insert: Omit<Database['public']['Tables']['user_profiles']['Row'], 'created_at' | 'updated_at'> & {
          created_at?: string;
          updated_at?: string;
        };
        Update: Partial<Database['public']['Tables']['user_profiles']['Insert']>;
      };
      saved_universities: {
        Row: {
          id: string;
          user_id: string;
          university_id: string;
          created_at: string;
        };
        Insert: Omit<Database['public']['Tables']['saved_universities']['Row'], 'id' | 'created_at'> & {
          id?: string;
          created_at?: string;
        };
        Update: Partial<Database['public']['Tables']['saved_universities']['Insert']>;
      };
    };
  };
}

// Helper types for convenience
export type University = Database['public']['Tables']['universities']['Row'];
export type Program = Database['public']['Tables']['programs']['Row'];
export type UserProfile = Database['public']['Tables']['user_profiles']['Row'];
export type SavedUniversity = Database['public']['Tables']['saved_universities']['Row'];
