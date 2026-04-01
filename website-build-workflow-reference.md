# Website Build Workflow — Reference Guide

**Prepared by:** Altin Lecaj, The Move Social Inc.
**Date:** March 29, 2026

---

## Overview

This document walks through a three-stage workflow for designing and building a production-quality website without writing code from scratch. The process uses AI tools at every stage — from visual design to frontend components to backend implementation.

**The three stages:**

1. **Design** — Google Stitch AI (visual design and prototyping)
2. **Build** — Google AI Studio + 21st.dev (frontend code and components)
3. **Backend** — Claude Code (backend logic, API, database)

Total time from idea to deployed site: hours, not weeks.

---

## Stage 1: Design with Google Stitch AI

**What it is:** An AI-powered design tool from Google Labs that generates complete, high-fidelity UI designs from text prompts, sketches, or even voice descriptions. Powered by Gemini.

**URL:** https://stitch.withgoogle.com

**Cost:** Free — 350 generations/month (standard mode), 50/month (experimental mode). No credit card required.

### How to use it

1. **Go to** https://stitch.withgoogle.com and sign in with your Google account.

2. **Describe your website.** Type a prompt describing what you want. Be specific about the type of business, the feel, and what pages you need. For example:

   > "A modern landing page for a local barbershop in Brooklyn. Dark theme with gold accents. Hero section with a booking button, services section with pricing, gallery of haircuts, reviews from Google, and a footer with address and hours."

3. **Stitch generates up to 5 interconnected screens** with consistent typography, colors, and components across all pages.

4. **Iterate.** Don't settle for the first result. Regenerate, tweak your prompt, or use the infinite canvas to drag in reference images and refine. Use Voice Canvas to speak changes directly:

   > "Make the hero image larger, move the booking button to the center, and change the accent color to teal."

5. **Review the clickable prototype.** Stitch connects your screens into an interactive prototype with transitions — click through it to see how the site flows.

6. **When you're happy with the design, export it.**

### Export options

| Export to | What you get |
|-----------|-------------|
| **Google AI Studio** (recommended) | 1-click export — transfers full HTML/CSS and screen designs with complete context |
| **HTML/CSS download** | Production-ready code files you can open in any editor |
| **Figma** | Editable layers with proper Auto Layout (not flat images) |
| **DESIGN.md** | Agent-friendly markdown file capturing your design rules — portable to any coding tool |

**For this workflow, use the 1-click export to Google AI Studio.**

---

## Stage 2: Build the Frontend with Google AI Studio + 21st.dev

### Step 2A: Google AI Studio — Turn Design into a Working App

**What it is:** Google's AI-powered development environment. It takes your Stitch design and turns it into a fully functional, runnable web application using Gemini.

**URL:** https://aistudio.google.com

**Cost:** Free tier available.

### How to use it

1. **Your Stitch design arrives in AI Studio** via the 1-click export. The full HTML, screen designs, and context transfer automatically.

2. **AI Studio generates a working app** — typically React with frontend code, basic interactivity, and layout matching your Stitch design.

3. **Iterate with natural language.** Tell it what to change:

   > "Add a contact form to the bottom of the page. Make the navigation sticky. Add smooth scrolling between sections."

4. **Preview live in the browser.** Every change renders instantly — no waiting for builds.

5. **When the frontend looks right, export the code:**
   - Download as a ZIP file, or
   - Push directly to a GitHub repository

6. **Optional: Deploy instantly.** AI Studio can deploy to Google Cloud Run with one click, giving you a live URL to share. You can also deploy on Vercel or Netlify.

### Step 2B: 21st.dev — Add Polished Components

**What it is:** The largest marketplace of production-ready React UI components, built on shadcn/ui and Tailwind CSS. Think of it as an app store for website building blocks — navbars, hero sections, pricing tables, testimonial carousels, etc. Used by 1.4M+ developers.

**URL:** https://21st.dev

**Cost:** Component library is free and open source. AI generation has a free tier.

### How to use it

1. **Browse 21st.dev** for components you want to add — animations, feature sections, pricing cards, footers, etc. Each component has a live preview.

2. **Install any component** with a single terminal command:

   ```
   npx shadcn@latest add "https://21st.dev/r/component-name"
   ```

3. **Or use the AI agent (Magic MCP)** to generate custom components from a description:

   > "/ui create a testimonial carousel with star ratings, customer photos, and auto-rotation"

   The agent writes production-ready React/TypeScript files directly into your project.

4. **Customize.** Every component is yours to modify — change colors, text, layout, animations. They use Tailwind CSS, so styling is straightforward.

### Setting up 21st.dev with Claude Code

To use 21st.dev's AI agent inside Claude Code, install the MCP server:

```bash
npx @21st-dev/cli@latest install claude --api-key <your-api-key>
```

Get your API key at https://21st.dev/magic/console.

Once installed, you can ask Claude to generate and add components using `/ui` commands directly in your coding session.

---

## Stage 3: Backend with Claude Code

**What it is:** Claude Code is Anthropic's AI coding assistant. It reads your entire codebase, understands the architecture, and implements backend features through natural language conversation.

**URL:** Available as a CLI tool, desktop app, web app, and IDE extension.

### How to use it

1. **Open your project** in Claude Code (terminal, VS Code, or desktop app).

2. **Describe what backend functionality you need.** For example:

   > "Set up an Express API with endpoints for booking appointments. Store bookings in a PostgreSQL database. Send a confirmation email when someone books. Add a contact form endpoint that sends me an email."

3. **Claude reads your existing frontend code** and builds the backend to match — it knows what API endpoints your frontend expects and wires everything together.

4. **Common backend tasks Claude handles:**
   - API routes and endpoints
   - Database setup and queries (PostgreSQL, MongoDB, etc.)
   - Authentication (login, signup, sessions)
   - Email sending (transactional emails, contact forms)
   - Payment integration (Stripe)
   - File uploads and storage
   - Third-party API integrations (Google Maps, social media, etc.)
   - Deployment configuration

5. **Iterate conversationally.** Ask Claude to add features, fix bugs, or modify behavior. It sees the full project context at all times.

---

## Full Workflow Summary

```
STAGE 1: DESIGN (Google Stitch AI)
  │
  │  Describe your website in plain English
  │  Iterate until the design looks right
  │  Export to Google AI Studio (1-click)
  │
  ▼
STAGE 2A: FRONTEND CODE (Google AI Studio)
  │
  │  Stitch design becomes a working app
  │  Add interactivity and refine with prompts
  │  Export code to your project
  │
  ▼
STAGE 2B: COMPONENTS (21st.dev)
  │
  │  Browse and add polished UI components
  │  Customize to match your brand
  │  Install with one command
  │
  ▼
STAGE 3: BACKEND (Claude Code)
  │
  │  Describe your backend needs
  │  Claude builds APIs, database, auth, etc.
  │  Deploy to Vercel, Netlify, or Cloud Run
  │
  ▼
LIVE WEBSITE
```

---

## Tools at a Glance

| Tool | Stage | What it does | Cost |
|------|-------|-------------|------|
| Google Stitch AI | Design | AI-generated UI mockups and prototypes from text/voice/sketches | Free (350 gen/month) |
| Google AI Studio | Frontend | Turns designs into working React apps with AI | Free tier |
| 21st.dev | Components | 1.4M+ production-ready React components, AI component generation | Free (library), free tier (AI) |
| Claude Code | Backend | AI coding assistant for APIs, databases, auth, deployment | Subscription |

---

## Tips for Best Results

1. **Be specific in your Stitch prompts.** "A website for a restaurant" gives generic results. "A modern single-page site for an upscale Italian restaurant in SoHo with a warm color palette, reservation widget, rotating menu with photos, and Instagram feed" gives something you can actually use.

2. **Iterate in Stitch before exporting.** It's faster to fix design issues in Stitch than in code. Regenerate as many times as you need — you have 350 generations/month.

3. **Use 21st.dev for the hard parts.** Animated hero sections, pricing tables, testimonial carousels — these take hours to build well. 21st.dev has them ready to drop in.

4. **Let Claude handle the backend holistically.** Don't ask for one endpoint at a time. Describe the full scope of what the backend needs to do, and Claude will build it with consistent architecture.

5. **Deploy early, iterate live.** Get a working version online fast (Vercel and Netlify have free tiers), then keep improving. A live URL is more convincing than a local demo.

---

## Questions?

Contact: Altin Lecaj — altin@themovesocial.com
