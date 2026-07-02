# Part 1 — Variables and Constants: Python Implementation
# #StatsFromScratch

import numpy as np
import pandas as pd

# ----------------------------------------------------
# 1. Creating and typing variables
# ----------------------------------------------------

# Constant
PI_VAL = np.pi
N_FIXED = 1000  # fixed population size used in a formula

# Quantitative - continuous
height_cm = pd.Series([172.5, 165.0, 180.2, 158.9, 169.4])

# Quantitative - discrete
num_children = pd.Series([0, 2, 1, 3, 0])

# Qualitative - nominal
blood_group = pd.Categorical(["A", "B", "O", "AB", "O"])

# Qualitative - ordinal
satisfaction = pd.Categorical(
    ["Low", "High", "Medium", "Low", "High"],
    categories=["Low", "Medium", "High"],
    ordered=True
)

# ----------------------------------------------------
# 2. Inspecting variable types
# ----------------------------------------------------
print(height_cm.dtype)          # float64 -> continuous
print(num_children.dtype)        # int64 -> discrete
print(blood_group.dtype)         # category -> nominal
print(satisfaction.ordered)      # True -> ordinal

# ----------------------------------------------------
# 3. Demonstrating "mean is meaningless for nominal data"
# ----------------------------------------------------
codes = blood_group.codes  # arbitrary integer codes assigned to categories
print("Arbitrary codes:", codes)
print("Meaningless mean of codes:", np.mean(codes))  # nonsensical - codes carry no magnitude

# Correct summary: frequency table / mode
freq = pd.Series(blood_group).value_counts()
print(freq)
print("Mode:", freq.idxmax())

# ----------------------------------------------------
# 4. Mean vs Average illustration
# ----------------------------------------------------
income = np.array([20000, 22000, 21000, 23000, 150000])  # one outlier (skewed)

mean_income = np.mean(income)
median_income = np.median(income)

print(f"Arithmetic Mean: {mean_income}")
print(f"Median (a different kind of 'average'): {median_income}")
# Demonstrates: "average" is ambiguous; mean and median diverge under skew

# ----------------------------------------------------
# 5. Parameter (fixed, unknown) vs Statistic (random) illustration
# ----------------------------------------------------
rng = np.random.default_rng(123)
population = rng.normal(loc=50, scale=10, size=100000)  # true mu = 50 (fixed, simulated here)
true_mu = population.mean()  # in real life, UNKNOWN and FIXED

# Draw repeated samples -> statistic VARIES across samples
sample_means = [rng.choice(population, size=30, replace=False).mean() for _ in range(5)]
print("Sample means (vary every draw):", sample_means)
print("True population mean (fixed constant):", true_mu)
