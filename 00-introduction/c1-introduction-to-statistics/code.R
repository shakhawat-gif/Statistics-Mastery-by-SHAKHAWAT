# C1 — Introduction to Statistics: R Implementation
# #StatsFromScratch — Module 0

# ----------------------------------------------------
# 1. Statistics in the PLURAL sense (raw aggregate data)
# ----------------------------------------------------
village_population <- c(1200, 980, 1450, 1100, 1340)  # "aggregate of facts"
print(village_population)

# A single number is NOT statistics in this sense:
single_value <- 1200   # this alone tells you little; it's not an "aggregate"

# ----------------------------------------------------
# 2. Statistics in the SINGULAR sense (the discipline/method)
# ----------------------------------------------------
# Demonstrating the core process: Collect -> Organize -> Analyze -> Interpret -> Present

# Collect
exam_scores <- c(55, 62, 71, 48, 90, 76, 65, 58, 82, 70)

# Organize
sorted_scores <- sort(exam_scores)
print(sorted_scores)

# Analyze (Descriptive Statistics)
summary_stats <- summary(exam_scores)
print(summary_stats)
cat("Mean:", mean(exam_scores), "\n")
cat("SD:", sd(exam_scores), "\n")

# Present
hist(exam_scores, main = "Exam Score Distribution", xlab = "Score", col = "lightblue")

# ----------------------------------------------------
# 3. Descriptive vs Inferential Statistics — illustrated
# ----------------------------------------------------

# DESCRIPTIVE: just describing the sample we have, no generalization claim
sample_mean <- mean(exam_scores)
cat("Descriptive: This SAMPLE's mean score is", sample_mean, "\n")

# INFERENTIAL: using the sample to make a claim about a LARGER population
set.seed(1)
t_test_result <- t.test(exam_scores, mu = 60)  # Is the population mean plausibly 60?
print(t_test_result)
cat("Inferential: Based on this sample, we test whether the TRUE POPULATION mean differs from 60.\n")
cat("This is an INFERENCE beyond the data we directly observed.\n")

# ----------------------------------------------------
# 4. Limitation illustration: statistics deals with aggregates, not individuals
# ----------------------------------------------------
# The class average doesn't tell us about any ONE specific student
cat("Class average:", mean(exam_scores), "\n")
cat("But student 4 scored:", exam_scores[4], "-- far from the average.\n")
cat("This illustrates the ecological fallacy risk: group statistics =/= individual truth.\n")
