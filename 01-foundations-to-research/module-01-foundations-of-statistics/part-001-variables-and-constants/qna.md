# Part 1 — Variables and Constants: Q&A (All Tiers)
`#StatsFromScratch`

---

## 🟢 BASIC (Factual Recall)

**Q1.** Define a constant. Give two examples.
**A.** A quantity with a single, fixed value throughout a study. Examples: $\pi$, the speed of light, a fixed sample size $n$ used in a calculation.

**Q2.** Define a variable.
**A.** A characteristic that can take different values across different units of observation or over time.

**Q3.** What are the two broad types of variables by measurement nature?
**A.** Qualitative (categorical) and Quantitative (numerical).

**Q4.** Give an example of a discrete variable and a continuous variable.
**A.** Discrete: number of siblings. Continuous: height.

**Q5.** What is an independent variable? What is a dependent variable?
**A.** Independent variable (IV): the one manipulated/used to explain. Dependent variable (DV): the outcome being explained/predicted.

**Q6.** What is a latent variable? Give an example.
**A.** A variable not directly observed but inferred from indicators, e.g., "intelligence" inferred from test scores.

**Q7.** What is the difference between exogenous and endogenous variables?
**A.** Exogenous: determined outside the model. Endogenous: determined within the model's system.

---

## 🔵 CORE (Conceptual Understanding, Derivation-Adjacent)

**Q8.** Explain why classifying a variable's measurement scale determines which statistics are valid to compute on it.
**A.** Each scale (nominal/ordinal/interval/ratio) supports only certain mathematical operations. Nominal data has no inherent order or magnitude, so arithmetic operations like mean are undefined; only mode and frequency counts are meaningful. As scale level increases, more operations (ordering, subtraction, ratios) become valid, unlocking more statistics (median for ordinal; mean, SD for interval/ratio).

**Q9.** Explain the conceptual chain: Independent Variable → Mediator → Dependent Variable. How does this differ from a Moderator?
**A.** A mediator sits causally *between* IV and DV, explaining the mechanism (IV causes Mediator, which causes DV). A moderator does not sit in the causal chain; it interacts with the IV to change the *strength or direction* of the IV→DV relationship without being an intermediate causal step.

**Q10.** Why is a population parameter (e.g., $\mu$) treated as a constant, not a random variable, in frequentist statistics?
**A.** In the frequentist framework, the population is considered fixed (even if unknown); $\mu$ has one true value at any given time. Randomness enters only through *sampling* — different samples drawn from the same fixed population yield different sample statistics (e.g., $\bar{x}$), which is why the statistic, not the parameter, is modeled as a random variable.

**Q11.** Explain how a confounding variable creates a spurious association, using a causal logic argument.
**A.** A confounder $C$ causes both the IV ($X$) and DV ($Y$): $C \to X$ and $C \to Y$. Even if $X$ has no causal effect on $Y$, observed data will show $X$ and $Y$ correlated because both move with $C$. Controlling for $C$ (e.g., via stratification, regression adjustment, or randomization) removes this spurious path.

---

## 🟠 TRICKY (Misconceptions, Edge Cases, Boundary Conditions)

**Q12.** A dataset records age in completed years (22, 35, 41...). Is age here a discrete or continuous variable?
**A.** Age is *intrinsically* continuous (time is continuous), but it has been *measured/recorded* discretely due to rounding to completed years. This is a measurement artifact, not a true change in the variable's underlying nature — a classic trap question. The correct answer distinguishes the *true* nature of the variable from its *recorded* precision.

**Q13.** Can a variable behave like a constant within a specific dataset? Give a scenario.
**A.** Yes — if every observation in a sample happens to take the same value (e.g., a study restricted to only 25-year-olds), "age" behaves like a constant *within that dataset*, even though age is conceptually a variable in the broader population. "Variable vs constant" is partly context/dataset-dependent.

**Q14.** Is "satisfaction score" measured on a 1–5 Likert scale ordinal or interval? Why does this matter?
**A.** Strictly, Likert-scale data is **ordinal** — we know "5 is more satisfied than 3" but cannot assume the gap between 1–2 equals the gap between 4–5. Many practitioners treat it as interval (computing means) for convenience, which is statistically debatable. This affects which central tendency measure (median, mode vs mean) and which tests (non-parametric vs parametric) are technically appropriate.

**Q15.** If two variables are correlated, does that automatically mean one is a confounder of the other?
**A.** No. Correlation alone does not establish a confounding relationship — that requires the third-variable to causally influence *both* variables under study. Two variables can correlate due to direct causation, reverse causation, confounding, coincidence, or selection bias; confounding is only one specific causal structure among several.

**Q16.** Is the number of bacteria in a petri dish (e.g., millions) a discrete or continuous variable?
**A.** Technically discrete (you can count individual bacteria), but because the counts are so large, it is often *treated* as continuous for modeling convenience (e.g., using continuous growth models). This illustrates that discrete vs continuous classification can be a practical/modeling decision, not always a rigid binary.

---

## 🟣 IQ (Logical Reasoning, Deep Connections)

**Q17.** If a researcher measures "income" as both a continuous variable (in dollars) and recodes it into "Low/Medium/High" categories, has the *underlying* variable changed? What has changed, and what are the consequences?
**A.** The underlying construct (income) hasn't changed — only its *operationalization/scale of measurement* has. The consequence is a loss of information (discretization throws away within-category variation) and a change in which statistical procedures are valid (you move from regression-style continuous methods to categorical methods like chi-square or ordinal logistic regression). This is a deliberate trade-off, sometimes used to handle nonlinearity or to simplify interpretation, but it reduces statistical power.

**Q18.** Why can a moderating variable be reframed as effectively introducing an "interaction term" in a regression model? Connect this conceptually to the statistical model.
**A.** A moderator changes the *slope* of the IV–DV relationship depending on its own value. In regression terms, this is captured by including a product term $X_1 \times X_2$ (an interaction term) in the model: $Y = \beta_0 + \beta_1 X_1 + \beta_2 X_2 + \beta_3 (X_1 \times X_2) + \epsilon$. The coefficient $\beta_3$ quantifies how much the effect of $X_1$ on $Y$ changes as the moderator $X_2$ changes — this is the formal statistical embodiment of "moderation."

**Q19.** Explain why distinguishing "variable" from "variate" matters in the theory of random variables but is often irrelevant in everyday data description.
**A.** In probability theory, a random variable is formally a *function* mapping outcomes in a sample space to real numbers, and a "variate" is the realized value once that function is evaluated at a specific outcome. This distinction matters because it separates the abstract probabilistic object (which has a distribution, expectation, variance) from its concrete observed instances (the data points). In everyday descriptive statistics, this formality is usually dropped because we're just describing data, not reasoning about the underlying probability mechanism that generated it.

---

## 🟡 VIVA (Oral Exam Simulation, Pressure Questions)

**Q20.** "Explain to a non-statistician the difference between mean and average." (Answer concisely, as if under viva pressure.)
**A.** "Average" is the everyday word people use loosely for 'a typical value' — it could mean the mean, median, or even mode depending on context. "Mean" is the *specific* mathematical calculation: add everything up, divide by how many there are. So mean is one type of average, but not every average is a mean — when income is heavily skewed, for example, journalists often report the median income but casually call it the "average," which can mislead readers expecting the arithmetic mean.

**Q21.** "If I tell you a variable is 'confounding,' what immediate follow-up question should you ask me?" (Viva-style probing question.)
**A.** I would ask: "Confounding *with respect to which* independent and dependent variable pair?" Confounding is not a property of a variable in isolation — it's a property relative to a specific causal question (does $X$ cause $Y$?). The same variable can be a confounder in one analysis and irrelevant in another, depending on what relationship is being studied.

**Q22.** "Defend the claim: a population parameter is never random." Anticipate and address a counterargument.
**A.** In the frequentist paradigm, yes — the parameter is fixed (even though unknown to us). The counterargument comes from the *Bayesian* school: Bayesians treat parameters as random variables with their own prior/posterior distributions, reflecting our *uncertainty* about the parameter rather than the parameter itself being inherently random. So the claim "parameters are never random" is paradigm-dependent — true under frequentist philosophy, false (in this specific epistemic sense) under Bayesian philosophy.

---

## 🔴 RESEARCH (Open-Ended, Literature-Connected)

**Q23.** In modern causal inference literature (Pearl's framework), how does the formal definition of a confounder via "backdoor paths" refine — or complicate — the classical statistics textbook definition given here?
**A.** The classical definition ("a variable correlated with both X and Y") is a *necessary but not sufficient* simplification. Pearl's do-calculus formalizes confounding via the existence of an open "backdoor path" between X and Y in a Directed Acyclic Graph (DAG) — a path starting with an arrow into X. This framework reveals subtleties the classical definition misses: e.g., colliders (variables caused by both X and Y) can falsely appear correlated with both but are *not* confounders, and conditioning on a collider can *induce* spurious association rather than remove it. This significantly refines applied practice — naive "control for everything correlated with both" strategies can introduce bias rather than eliminate it.

**Q24.** Discretizing a continuous variable (e.g., turning continuous BMI into categories) is common in applied/clinical research. What does the methodological literature say about the statistical costs of this practice, and under what conditions might it still be justified?
**A.** The methodological literature (e.g., work by Royston, Altman, and Sauerbrei on "the dangers of categorizing continuous variables") generally finds that discretization reduces statistical power, can introduce residual confounding within categories, and is sensitive to arbitrary cutpoint choice (which can be p-hacked). It may still be justified when: (1) the true relationship is genuinely non-linear/threshold-based and a continuous model would misspecify it, (2) clinical decision-making *requires* discrete categories for actionability (e.g., treatment cutoffs), or (3) communication to a non-technical audience benefits from simpler categories — provided the analysis itself isn't compromised by it.

---

**Total: 24 Q&A pairs across 6 tiers** (exceeds the 20-question minimum). Next part will follow the same structure for Part 2 — Producing and Sourcing Statistical Data.
