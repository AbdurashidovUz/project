# UniSearch

UniSearch is a modern, full-stack web application designed to simplify the university search process for students. It provides a comprehensive platform to discover, filter, and learn about universities worldwide, featuring a Gemini-powered AI assistant and recommendation system to help students find their perfect academic match.

## Features Implemented

### 🔍 University Search & Discovery
- **Smart Search**: Instantly search for universities by name, country, or location from our real database of 340+ universities across 35 countries.
- **Advanced Filtering**: Refine results based on:
  - **Country**: Filter by preferred study destinations.
  - **Tuition Range**: Set a budget that fits your financial plan.
  - **IELTS Score**: Find universities that match your language proficiency.
  - **Scholarship Availability**: Easily identify institutions offering financial aid.

### 📊 Comprehensive Data Pipeline
- **Automated Web Scraper**: A built-in Node.js scraper tool that visits university websites to automatically extract and update tuition fees, deadlines, IELTS requirements, and scholarship information.
- **Supabase Backend**: Fully integrated PostgreSQL database handling real-time data for universities, academic programs, and users.

### 🤖 Gemini AI-Powered Assistant & Recommendations
- **Interactive Chatbot**: Integrated with **Google Gemini 2.0 Flash API**, providing natural, context-aware conversations using real university data from the database.
- **Smart Recommendations**: Enter your GPA, IELTS score, and budget to receive tailored recommendations categorized into:
  - **Safe Schools**: High probability of acceptance.
  - **Match Schools**: Good alignment with your profile.
  - **Ambitious Schools**: Reach goals for top-tier institutions.

### 👤 User Accounts & Authentication
- **Secure Authentication**: Full Sign Up/Login functionality via Supabase Auth.
- **User Profiles & Saves**: Users can save their preferred universities to their profile for easy access later.

### ⚖️ Compare Universities Tool
- **Side-by-Side Comparison**: Select up to 3 universities and compare them head-to-head on key metrics like cost, world ranking, acceptance rates, and student population.

### 📱 Modern & Responsive Design
- **Mobile-First**: Fully responsive interface that works seamlessly on desktop, tablet, and mobile devices.
- **UI/UX**: Clean, intuitive, and visually appealing design built with Tailwind CSS.

## Tech Stack

- **Frontend**: React, TypeScript
- **Backend & Database**: Supabase (PostgreSQL, Auth, RLS)
- **AI Integration**: Google Gemini API (2.0 Flash)
- **Data Scraping**: Node.js, Cheerio
- **Build Tool**: Vite
- **Styling**: Tailwind CSS
- **Icons**: Lucide React

## Things Waiting to be Done

### Application Management
- **Direct Applications**: Enable students to apply to universities directly through the platform.
- **Document Vault**: Secure storage for application documents (transcripts, SOPs, etc.).
