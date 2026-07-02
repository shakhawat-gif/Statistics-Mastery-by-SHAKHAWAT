# Exact GitHub Setup — Step by Step
From zero to a live, fully-structured public repository

---

## PART 0 — What you're about to create

One repository called **`stats-mastery-public`** (or your preferred name) containing:

```
stats-mastery-public/
├── README.md                          ← your manifesto + 3 progress trackers
├── LICENSE                            ← MIT license
├── CONTRIBUTING.md                    ← repo conventions, for visitors
├── .gitignore                         ← keeps junk files out
│
├── 00-introduction/                   ← C1–C7 (7 chapters)
│   ├── c1-introduction-to-statistics/        ✅ FULLY WRITTEN
│   ├── c2-statistical-data/                  ⚪ stub, ready to fill
│   ├── c3-types-of-data/                     ⚪ stub
│   ├── c4-scales-of-measurement/             ⚪ stub
│   ├── c5-population-and-sample/             ⚪ stub
│   ├── c6-parameter-and-statistic/           ⚪ stub
│   └── c7-viva-voce-style-qa-overview/       ⚪ stub
│
├── 01-foundations-to-research/        ← Pillar B: Parts 1–121, in 30 modules
│   ├── module-01-foundations-of-statistics/
│   │   ├── part-001-variables-and-constants/      ✅ FULLY WRITTEN
│   │   ├── part-002-producing-and-sourcing-statistical-data/  ⚪ stub
│   │   ├── part-003-organization-and-presentation-of-data/    ⚪ stub
│   │   └── part-004-exploratory-data-analysis/                ⚪ stub
│   ├── module-02-measures-of-central-tendency/    (Parts 5–9)
│   ├── module-03-measures-of-dispersion/          (Parts 10–14)
│   ├── ... (all 30 modules, through)
│   └── module-30-advanced-and-beyond-syllabus-topics/  (Parts 114–121)
│
├── 02-statistical-tests-encyclopedia/ ← Pillar A: 400+ tests, 10 phases
│   ├── phase-01-normality-distribution-fit-outliers-homoscedasticity/
│   ├── phase-02-location-tests/
│   ├── ... (through phase-10)
│   └── post-hoc-battery/
│
├── 03-ml-logbook/                     ← Pillar C: ML, 9 modules
│   ├── module-01-math-stats-foundations/
│   ├── module-02-statistical-learning-theory/
│   ├── ... (through module-09)
│
└── social-drafts/                     ← your post drafts, kept for reference
    ├── c1-launch-social-posts.md
    └── part-01-social-posts.md
```

Every chapter/part folder already contains 4–5 placeholder files (`notes.md`, `code.R`, `code.py`, `code.do`, `qna.md`) so the **entire 122+11+9 structure exists and is browsable on GitHub from day one** — even though most are empty stubs marked "NOT YET WRITTEN." This is intentional: it shows the full scope of the project immediately, which is powerful for credibility (anyone visiting sees the complete roadmap, not just one finished folder floating alone).

**File count:** 849 files, 183 folders — already built and zipped for you. You just need to download, unzip, and push.

---

## PART 1 — Create the GitHub repository (on github.com)

1. Go to [github.com](https://github.com), log into your account (`@shakhawat-gif`).
2. Click the **`+`** icon (top right) → **New repository**.
3. Fill in:
   - **Repository name:** `stats-mastery-public` (or `study-in-public`, or your name — but keep it once chosen; don't rename later, it breaks all your social links)
   - **Description:** `Rebuilding statistics from absolute zero, in public — 122 parts, 400+ tests, full ML roadmap. Theory + R/Python/Stata code + tiered Q&A.`
   - **Visibility:** **Public** (required — this is the whole point)
   - **Do NOT check** "Add a README file" (you already have one — checking this creates a conflicting file)
   - **Do NOT add** .gitignore or license from GitHub's template picker (you already have both — same conflict reason)
4. Click **Create repository**.
5. GitHub will show you a page with setup instructions — **ignore that page for now**, keep this browser tab open, you'll come back to copy the repository URL.

---

## PART 2 — Download and unzip the prepared structure

1. Download `stats-mastery-public-starter.zip` (provided in this conversation).
2. Unzip it on your laptop. You'll get a folder called `stats-mastery-public/` containing everything described in Part 0 above.
3. Open a terminal and navigate into that folder:

```bash
cd path/to/stats-mastery-public
```

(Replace `path/to/` with wherever you unzipped it — e.g., `cd ~/Downloads/stats-mastery-public`)

---

## PART 3 — Initialize Git and connect to GitHub

Run these commands **exactly in this order**, one at a time:

```bash
# 1. Initialize git in this folder
git init

# 2. Set your identity (only needed once per machine, skip if already set)
git config --global user.name "Shakhawat"
git config --global user.email "your-email@example.com"

# 3. Stage everything
git add .

# 4. Make your first commit
git commit -m "Initial structure: C1 + Part 1 complete, full 122-part + Pillar A + Pillar C roadmap scaffolded"

# 5. Rename default branch to main (modern GitHub standard)
git branch -M main

# 6. Connect to your GitHub repo (replace URL with YOUR repo's actual URL from Part 1 step 5)
git remote add origin https://github.com/shakhawat-gif/stats-mastery-public.git

# 7. Push everything up
git push -u origin main
```

After step 7, refresh your GitHub repository page in the browser — you should see the entire folder structure live.

> **If you're asked for a password and it fails:** GitHub no longer accepts account passwords for git operations. You need a **Personal Access Token** instead. Go to GitHub → Settings → Developer settings → Personal access tokens → Generate new token (classic) → check the `repo` scope → generate → copy the token → use it as your password when prompted. Save it somewhere safe (e.g., a password manager) — GitHub won't show it again.

---

## PART 4 — Configure the repo's "About" section (this matters for first impressions)

On your repo's main page on GitHub:

1. Click the **⚙️ gear icon** next to "About" (top right of the file list area).
2. **Description:** same as Part 1 step 3, or refine it.
3. **Website:** (optional) link to your LinkedIn or a future personal site.
4. **Topics:** add these tags (type each, press Enter):
   `statistics` `data-science` `machine-learning` `r` `python` `stata` `study-in-public` `learning-in-public` `statistical-tests` `education`
   (Topics make your repo discoverable in GitHub search — don't skip this.)
5. Check **"Include in the home page"** if shown.
6. Save changes.

---

## PART 5 — Pin the repository on your profile

1. Go to your GitHub profile page (`github.com/shakhawat-gif`).
2. Click **"Customize your pins"**.
3. Select `stats-mastery-public`.
4. Save.

This makes it the first thing anyone sees when they visit your GitHub profile — critical since every social post link will drive traffic to your profile too.

---

## PART 6 — Add a profile README (optional but high-value, do this in week 1)

GitHub lets you create a special repo named **exactly the same as your username** (`shakhawat-gif/shakhawat-gif`) — its README displays directly on your profile page above your pinned repos.

1. Create a new repo named `shakhawat-gif` (must match your username exactly), public, with a README checked this time.
2. Use it for a short bio + links to LinkedIn/Twitter/Instagram + a highlight box pointing to `stats-mastery-public`.

This is a small task but meaningfully boosts how professional your GitHub presence looks to anyone (scholarship committees, professors, recruiters) who clicks through from your other platforms.

---

## PART 7 — Ongoing workflow (every time you finish a new chapter/part)

Once the repo exists, publishing each new piece of content follows this exact loop:

```bash
# 1. Navigate to the repo folder
cd path/to/stats-mastery-public

# 2. Edit the relevant files (e.g., fill in C2's notes.md, code.R, code.py, code.do, qna.md)
#    Use any text editor — VS Code recommended for markdown + code together

# 3. Update the README.md progress table — change ⚪ to 🟢 for the completed item

# 4. Stage and commit
git add .
git commit -m "Add C2: Statistical Data — full notes, code, and Q&A"

# 5. Push
git push
```

**Commit message convention** (keep these consistent — they become a readable project log):
- `Add C2: Statistical Data — full notes, code, and Q&A` (new content)
- `Fix: correct Bessel's correction derivation in Part 012` (corrections)
- `Update README progress tracker` (tracker-only updates)

---

## PART 8 — Folder-naming rules you must follow going forward

To keep the 3-digit zero-padded sorting working correctly for all 121 parts (so Part 9 doesn't sort after Part 100 alphabetically):

| Item | Pattern | Example |
|---|---|---|
| Chapter | `c{N}-slug` | `c2-statistical-data` |
| Module | `module-{NN}-slug` | `module-02-measures-of-central-tendency` |
| Part | `part-{NNN}-slug` | `part-005-arithmetic-mean` |
| Test (Pillar A) | `phase-{NN}-slug/test-name-slug/` | `phase-01.../shapiro-wilk-test/` |
| ML topic (Pillar C) | `module-{NN}-slug/topic-slug/` | `module-03-classical-ml/linear-regression/` |

Always lowercase, words separated by single hyphens, no spaces, no special characters.

---

## PART 9 — Quick verification checklist (do this right after first push)

- [ ] Repo is **Public**, not Private
- [ ] README.md renders correctly on the main repo page (check formatting, especially tables)
- [ ] All 7 chapter folders visible under `00-introduction/`
- [ ] All 30 module folders visible under `01-foundations-to-research/`, each containing the correct part subfolders
- [ ] `02-statistical-tests-encyclopedia/` and `03-ml-logbook/` both visible with their module/phase folders
- [ ] Repo Topics added (Part 4)
- [ ] Repo pinned to profile (Part 5)
- [ ] You can click into `00-introduction/c1-introduction-to-statistics/notes.md` and it renders properly with headers, tables, and the math notation reasonably readable

---

## A note on LaTeX rendering on GitHub

GitHub's markdown renderer supports LaTeX math (`$...$` inline, `$$...$$` block) natively as of recent updates — your `notes.md` files using `$\mu$`, `$\beta_1$`, etc. should render correctly directly on GitHub. If any look broken, double-check there's no stray markdown special character interfering inside the math delimiters.

---

Once this is live, your **first commit + first 7-platform social post (the C1 launch)** can go out the same day — the repo link in every post will actually have real, browsable content behind it, not a placeholder.
