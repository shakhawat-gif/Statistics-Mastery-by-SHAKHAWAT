# Notion Workspace Setup — Stats Mastery Public
(Build this as a Notion page with the databases described below)

---

## 📋 PAGE 1: Master Dashboard
A single page linking to the three databases below, plus a "This Week" view (filtered to show only items due in the next 7 days).

---

## 🗄️ DATABASE 1: Content Pipeline

Columns (properties):
| Property | Type | Options |
|---|---|---|
| Title | Title | e.g. "Part 1 — Variables and Constants" |
| Series | Select | Stats From Scratch / Stat Test Tuesday / ML Logbook |
| Part/Item # | Number | |
| Status | Select | Idea → Drafting → GitHub Done → LinkedIn Done → Twitter Done → Instagram Done → Fully Published |
| Source Material | Text | Link/reference to original notes |
| GitHub Link | URL | |
| Publish Date | Date | |
| Engagement Notes | Text | (fill in after posting — what worked, what didn't) |

**Views to create:**
- Kanban view grouped by Status (your main working view)
- Calendar view by Publish Date (for scheduling)
- Filtered view: "This Week" (Publish Date within next 7 days)

---

## 🗄️ DATABASE 2: Master Progress Tracker (mirrors GitHub README tables)

Three sub-tables, one per series:
1. **Stats From Scratch** — 117 rows (Part 1 to Part 117), columns: Part#, Title, Module, Status (Not Started/Drafting/Published), GitHub link
2. **Stat Test Tuesday** — rows per test cluster/phase, same column structure
3. **ML Logbook** — rows per module/topic, same column structure

This should be a near-exact mirror of the GitHub README progress tables — update both together so they never drift out of sync.

---

## 🗄️ DATABASE 3: Idea Backlog
Quick-capture database for raw ideas before they're scheduled:
| Property | Type |
|---|---|
| Idea | Title |
| Series | Select |
| Notes | Text |
| Priority | Select (Low/Med/High) |

Whenever you think of a good hook, trap question, or visual idea while studying — drop it here immediately, don't lose it.

---

## 📅 90-DAY ROLLOUT CALENDAR

### Phase 1 — Weeks 1–4: Stats From Scratch Only
**Goal:** Build the posting habit, establish format, no new pillar added yet.

| Week | Action |
|---|---|
| 1 | Set up GitHub repo + Notion. Publish Part 1 (today's work) across GitHub → LinkedIn → Twitter → Instagram. |
| 2 | Publish Part 2 (Producing and Sourcing Data). Same 4-platform cadence. |
| 3 | Publish Part 3 (Organization and Presentation of Data). |
| 4 | Publish Part 4 (EDA). Module 1 complete — write a short "Module 1 wrap-up" reflection post (good LinkedIn content: "What I learned in my first month of building in public"). |

**Cadence in this phase:** 1 full Part per week (GitHub + LinkedIn + Twitter), Instagram every other Part to start (don't overload yourself with design work yet).

---

### Phase 2 — Weeks 5–12: Add Stat Test Tuesday as a Companion Lane
**Goal:** Introduce the second pillar, cross-linked to the first.

| Week | Stats From Scratch | Stat Test Tuesday |
|---|---|---|
| 5 | Part 5 (Arithmetic Mean) | — |
| 6 | Part 6 (GM/HM) | First test post: Normality tests (Shapiro-Wilk, KS) — naturally pairs with distribution shape concepts |
| 7 | Part 7 (Median/Quartiles) | Outlier tests (Grubbs, Dixon's Q) |
| 8 | Part 8 (Mode) | — |
| 9 | Part 9 (Decision Framework AM/GM/HM) | One-sample location tests |
| 10 | Part 10 (Range/QD) | Two-sample location tests (t-test, Mann-Whitney) |
| 11 | Part 11 (Mean Deviation) | — |
| 12 | Part 12 (Variance/SD) | Homoscedasticity tests (Levene's, Bartlett's) — direct pairing with variance content |

**Cadence in this phase:** ~1 Stats From Scratch post/week (unchanged) + 1 Stat Test Tuesday post every other week, always cross-linked when a natural pairing exists.

---

### Phase 3 — Month 3+ (Week 13 onward): Introduce ML Logbook
**Goal:** Add the third, slower lane only once the first two have rhythm.

| Cadence | Series |
|---|---|
| ~1x/week | Stats From Scratch (continues at steady pace through Modules 4–9 and beyond) |
| ~1x every 2 weeks | Stat Test Tuesday (continues) |
| ~1x/week (new) | ML Logbook — start with Module 1 (Math foundations) since you already have linear algebra/probability covered from Stats From Scratch — natural crossover content |

**First ML Logbook posts should explicitly cross-reference Stats From Scratch material** — e.g., "I just covered MLE in Part 37 of Stats From Scratch — here's how that same MLE machinery underlies logistic regression in ML." This reinforces the "one brand, three series" structure rather than starting ML cold.

---

## 🔁 WEEKLY RITUAL (once running)
1. **Monday:** Pick the week's Part(s) from the Master Progress Tracker, move to "Drafting" in Content Pipeline.
2. **Tue–Wed:** Write notes.md + code (R/Python/Stata) + Q&A → commit to GitHub.
3. **Thursday:** Publish LinkedIn post (best engagement day for professional content).
4. **Friday:** Publish Twitter thread.
5. **Weekend:** Publish Instagram carousel (more time available for design).
6. **Sunday (15 min):** Update Notion tracker + GitHub README progress tables together.

---

## ⚠️ Guardrails (to avoid burnout / inconsistency)
- **Never start a new Part until the current one is fully published across all 4 platforms.** Half-finished parts scattered everywhere kill momentum.
- **It's fine to skip Instagram some weeks** if time is tight — GitHub + LinkedIn + Twitter are the non-negotiable core three.
- **Re-use content, don't rewrite it.** The LinkedIn post, Twitter thread, and Instagram carousel should all come from the *same* notes.md — don't create new material for each platform.
- **If you fall behind, slow the pace, don't stop.** Going from weekly to biweekly is fine. Stopping entirely breaks the "public" part of "study in public."
