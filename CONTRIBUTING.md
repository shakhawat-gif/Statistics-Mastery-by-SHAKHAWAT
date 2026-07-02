# Contributing / Repo Conventions

This repository is primarily a personal public learning log, but corrections, discussions, and suggestions are genuinely welcome.

## How each content unit is structured
Every chapter (`C1`–`C7`) and every part (`Part 001`–`Part 121`) follows the same four-file template:

| File | Purpose |
|---|---|
| `notes.md` | Full theory: definitions, derivations, boundary cases, practical importance |
| `code.R` | R implementation |
| `code.py` | Python implementation |
| `code.do` | Stata implementation |
| `qna.md` | Q&A across 6 tiers: Basic, Core, Tricky, IQ, Viva, Research (minimum 20 questions) |

## Naming convention
- Chapters: `c{N}-slug-title` (e.g., `c1-introduction-to-statistics`)
- Modules: `module-{NN}-slug-title` (e.g., `module-01-foundations-of-statistics`)
- Parts: `part-{NNN}-slug-title` (e.g., `part-001-variables-and-constants`) — zero-padded to 3 digits for correct alphabetical sorting up to Part 121
- Statistical tests (Pillar A): organized by phase, then `test-name/` subfolder per test
- ML topics (Pillar C): organized by module, mirroring the ML Roadmap structure

## Found an error?
Please open an issue or a pull request with the correction — citing a source/textbook reference if possible. All corrections will be credited.

## Status markers used throughout
- ⚪ Not started
- 🟡 Drafting
- 🟢 Published (notes + code + Q&A complete, posted on social platforms)
