# Refined product prompt — WorthIt

## Original ask (paraphrased)
A generic, live, error-free HTML dashboard where any visitor searches for a need and discovers
which in-demand websites/concepts would actually benefit *them*. Works online and offline.
Later monetised with a small fee.

## Research (Nov 2026, done in browser)
- Most-visited sites, Oct 2026 (Similarweb / Semrush via Wikipedia): Google, YouTube, Facebook,
  Instagram, ChatGPT, X, TikTok, WhatsApp, Reddit, Bing … Gemini #15, LinkedIn #17,
  Microsoft 365 #18, Claude #25, Canva #33, GitHub #39, Zoom #48.
- Fastest-growing by real adoption in 2026 (TheAISelect): Cursor, Perplexity, ElevenLabs,
  HeyGen, Gamma, Claude. 1B+ people now use generative-AI platforms.
- Most in-demand skills (LinkedIn / WEF 2026): AI literacy, analytical thinking,
  skills-based hiring, data and digital skills.

**Gap found:** people already know these sites *exist*. What nobody answers is
"which of these is worth it **for me**, and what do I do first?"

## Refined prompt (the one this build follows)
> Build **WorthIt**, a single self-contained HTML dashboard. A visitor types a goal in plain
> words ("earn money from home", "learn English", "get my shop found") or taps a goal chip.
> Match it against a curated, embedded knowledge base of ~90 globally in-demand **tools**
> (ChatGPT, Canva, LinkedIn …) and free **methods** (Pomodoro, 2FA, STAR interviews …).
>
> Personalise every result with a profile: who I am (student, job seeker, freelancer,
> business owner, creator, developer, professional, parent), budget, device, "must work
> offline", and **what one hour of my time is worth**. From that compute a **Worth-It score**
> (0–100), the monthly value of time saved, and a break-even line
> ("the paid plan pays for itself if it saves you 23 min a week").
>
> Let the visitor add picks to **My Benefit Plan** (totals, hours-saved chart, 7-day action plan
> with checkboxes, export/print), compare up to 3 side by side, and explain any unknown
> concept via Wikipedia when online (queued and answered automatically when back online).
>
> Must: work 100% offline (no CDNs, all data inline; service worker + manifest when hosted),
> light/dark, mobile-first, accessible, no console errors, no tracking, all data on device.
> Monetisation-ready: a CONFIG block with price, payment link and Pro gating (off by default).

## Self-check questions asked before building
1. Does it still work with no internet? → yes, knowledge base + methods are embedded.
2. Is the benefit personal, not generic? → score, value and break-even use the visitor's own profile.
3. Will someone pay? → Pro = unlimited plan, 7-day planner export, saved plans; priced low.
4. Can it break live? → no external runtime dependencies; every network call has a timeout + fallback.
