# C1 — Introduction to Statistics: Python Implementation
# #StatsFromScratch — Module 0

import numpy as np
from scipy import stats
import matplotlib.pyplot as plt

# ----------------------------------------------------
# 1. Statistics in the PLURAL sense (raw aggregate data)
# ----------------------------------------------------
village_population = np.array([1200, 980, 1450, 1100, 1340])  # "aggregate of facts"
print("Aggregate data:", village_population)

single_value = 1200  # a single number alone is NOT statistics in this sense

# ----------------------------------------------------
# 2. Statistics in the SINGULAR sense (the discipline/method)
# ----------------------------------------------------
# Collect -> Organize -> Analyze -> Interpret -> Present

# Collect
exam_scores = np.array([55, 62, 71, 48, 90, 76, 65, 58, 82, 70])

# Organize
sorted_scores = np.sort(exam_scores)
print("Sorted:", sorted_scores)

# Analyze (Descriptive Statistics)
print("Mean:", np.mean(exam_scores))
print("SD:", np.std(exam_scores, ddof=1))
print("Five-number summary:", np.percentile(exam_scores, [0, 25, 50, 75, 100]))

# Present
plt.hist(exam_scores, bins=5, color="lightblue", edgecolor="black")
plt.title("Exam Score Distribution")
plt.xlabel("Score")
plt.ylabel("Frequency")
plt.savefig("exam_scores_hist.png")  # saved instead of shown, for script use
plt.close()

# ----------------------------------------------------
# 3. Descriptive vs Inferential Statistics — illustrated
# ----------------------------------------------------

# DESCRIPTIVE: just describing the sample we have
sample_mean = np.mean(exam_scores)
print(f"Descriptive: This SAMPLE's mean score is {sample_mean}")

# INFERENTIAL: using the sample to make a claim about a LARGER population
t_stat, p_value = stats.ttest_1samp(exam_scores, popmean=60)
print(f"Inferential: t-statistic = {t_stat:.3f}, p-value = {p_value:.3f}")
print("This tests whether the TRUE POPULATION mean plausibly differs from 60 —")
print("an inference that goes beyond the data we directly observed.")

# ----------------------------------------------------
# 4. Limitation illustration: aggregates vs individuals
# ----------------------------------------------------
print("Class average:", np.mean(exam_scores))
print("But student 4 (index 3) scored:", exam_scores[3], "-- far from the average.")
print("This illustrates the ecological fallacy risk: group statistics =/= individual truth.")
