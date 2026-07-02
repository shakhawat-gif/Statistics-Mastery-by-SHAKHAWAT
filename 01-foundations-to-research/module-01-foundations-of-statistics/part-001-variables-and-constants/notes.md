# Part 1 — Variables and Constants: Complete Theory
`#StatsFromScratch` · Module 1: Foundations of Statistics

---

## 1. Definitions

**Constant:** A quantity that retains a single, fixed value throughout a particular study or computation (e.g., $\pi$, the number of days in a non-leap year, a fixed population size $N$ used in a formula).

**Variable:** A characteristic that can take different values across different units of observation, or across time, for the same unit.

> **Critical distinction (IQ favorite):** *Variate* vs *Variable*.
> - A **variable** is the *name/label* of the characteristic being measured (e.g., "height").
> - A **variate** is a *particular value* taken by that variable for a specific observation, when treated as a random outcome from a probability distribution (e.g., "172 cm" is a variate of the variable "height").
>
> In short: variable = the concept/container; variate = a specific random realization. Most casual usage blurs this, but in mathematical statistics (especially in the context of random variables and sampling distributions), the distinction matters — "variate" carries the connotation of randomness/probabilistic origin, while "variable" is the more general descriptive term.

---

## 2. Types of Variables

### 2.1 By Measurement Nature
- **Qualitative (Categorical):** Values are categories/labels, not numbers (e.g., blood group, religion).
- **Quantitative (Numerical):** Values are numbers with magnitude (e.g., income, age).
  - **Discrete:** Countable, finite/countably infinite set of values (e.g., number of children).
  - **Continuous:** Can take any value within an interval (e.g., height, weight, time).

### 2.2 By Role in a Study (research design context)
- **Independent Variable (IV):** The variable manipulated or used to explain/predict.
- **Dependent Variable (DV):** The outcome being explained/predicted.
- **Intervening (Mediating) Variable:** Explains the *mechanism* through which IV affects DV (IV → Mediator → DV).
- **Extraneous Variable:** Any variable other than IV that *might* affect DV; if uncontrolled, it threatens internal validity.
- **Moderating Variable:** Changes the *strength or direction* of the IV–DV relationship (interaction effect).
- **Confounding Variable:** A specific type of extraneous variable that is correlated with *both* IV and DV, creating a spurious or distorted apparent relationship.

> **Trap:** Mediator vs Moderator vs Confounder are commonly confused.
> - Mediator: explains *how/why* (sits causally between IV and DV).
> - Moderator: explains *when/for whom* (changes the relationship's strength, doesn't sit causally between).
> - Confounder: explains away — creates a *false* IV–DV relationship because it causes both.

### 2.3 Latent vs Manifest Variables
- **Manifest variable:** Directly observed/measured (e.g., test score).
- **Latent variable:** Not directly observable; inferred from manifest variables (e.g., "intelligence," "socioeconomic status," "depression severity" — measured via indicators/items in factor analysis or SEM).

### 2.4 Endogenous vs Exogenous (Econometric Context)
- **Exogenous variable:** Determined *outside* the model; its variation is not explained by other variables in the system (input).
- **Endogenous variable:** Determined *within* the model's system of equations (output, or correlated with the error term — causing bias if treated naively in regression).

### 2.5 Random vs Fixed Variables
- **Fixed (design) variable:** Levels are chosen/set by the researcher (e.g., dosage levels in an experiment).
- **Random variable:** Values arise from a probabilistic mechanism; the variable's outcome is governed by a probability distribution.

### 2.6 Classification by Scale of Measurement
(Full treatment is Part 1's sibling concept, detailed in scales-of-measurement, but the basic classification ladder is):
**Nominal → Ordinal → Interval → Ratio** (each level inherits the properties of the one before plus one more: identity → order → equal intervals → true zero).

---

## 3. Mean vs Average — Are They the Same? (Critical IQ Distinction)

This is one of the most-tested conceptual traps in viva exams.

- **Average** is a *general, informal* term for any single value meant to represent a typical/central value of a dataset — it can refer to the mean, median, *or* mode depending on context ("average" in common English usage is ambiguous).
- **Mean** specifically refers to the **arithmetic mean** (sum of values ÷ number of values) — a precise mathematical operation.

> **The trap:** All means are averages, but not all averages are means. When someone says "average income," they almost always mean the arithmetic mean — but technically, "average" doesn't *require* that any specific formula be used; it's the broader umbrella term. In rigorous statistical writing, prefer "mean," "median," or "mode" explicitly rather than the ambiguous "average."

---

## 4. Boundary Cases and Philosophical Debates

- **Can a variable have zero variation?** Technically, if every unit takes the same value, it behaves like a constant for that dataset — illustrating that "variable" vs "constant" is partly *context-dependent*, not an absolute property of the quantity itself. The speed of light is a universal constant; a person's age is a variable across a population but momentarily fixed (constant) at the instant of measurement for that one person.
- **Is a parameter a constant or a variable?** A population *parameter* (e.g., population mean $\mu$) is treated as a **fixed but unknown constant** in the frequentist framework — it does not vary; only our *estimate* of it (a statistic, computed from a random sample) is a random variable. This is a classic exam trap: students often wrongly call $\mu$ "random."
- **Discrete vs continuous boundary:** Some variables are *theoretically* continuous but recorded discretely due to measurement precision (e.g., age recorded in completed years instead of exact age) — this is **grouping/rounding**, not a true change in the variable's underlying nature.

---

## 5. Why This Matters in Practice

Correctly classifying a variable determines:
1. Which **descriptive statistics** are valid (mean is meaningless for nominal data; mode is the only valid central tendency measure for nominal data).
2. Which **graphical methods** apply (bar chart for categorical, histogram for continuous).
3. Which **statistical tests** are appropriate downstream (this is exactly why Part 1 is the foundation for the entire `#StatTestTuesday` series — every test selection decision tree starts by asking "what type of variable is this?").
4. Which **regression/ML model family** is appropriate (linear regression for continuous DV, logistic for binary DV, multinomial/ordinal models for categorical DV).
