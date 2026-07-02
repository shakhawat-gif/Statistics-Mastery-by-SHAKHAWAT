# Part 1 — Variables and Constants: R Implementation
# #StatsFromScratch

# ----------------------------------------------------
# 1. Creating and typing variables
# ----------------------------------------------------

# Constant
pi_val <- pi                      # a true mathematical constant
N_fixed <- 1000                   # a fixed population size used in a formula

# Quantitative - continuous
height_cm <- c(172.5, 165.0, 180.2, 158.9, 169.4)

# Quantitative - discrete
num_children <- c(0, 2, 1, 3, 0)

# Qualitative - nominal
blood_group <- factor(c("A", "B", "O", "AB", "O"))

# Qualitative - ordinal
satisfaction <- factor(c("Low", "High", "Medium", "Low", "High"),
                        levels = c("Low", "Medium", "High"),
                        ordered = TRUE)

# ----------------------------------------------------
# 2. Inspecting variable types
# ----------------------------------------------------
str(height_cm)        # num -> continuous
str(num_children)      # num but conceptually discrete (integer-valued)
str(blood_group)       # Factor -> nominal
str(satisfaction)      # Ordered Factor -> ordinal

class(height_cm)
class(blood_group)
is.ordered(satisfaction)

# ----------------------------------------------------
# 3. Demonstrating "mean is meaningless for nominal data"
# ----------------------------------------------------
# This will correctly throw a warning / NA - illustrating WHY type matters
mean(as.numeric(blood_group))   # nonsensical - codes are arbitrary labels, not magnitudes

# Correct summary for nominal data: frequency table / mode
table(blood_group)
names(sort(table(blood_group), decreasing = TRUE))[1]  # mode

# ----------------------------------------------------
# 4. Mean vs Average illustration
# ----------------------------------------------------
income <- c(20000, 22000, 21000, 23000, 150000)  # one outlier (skewed)

mean_income   <- mean(income)
median_income <- median(income)

cat("Arithmetic Mean:", mean_income, "\n")
cat("Median (a different kind of 'average'):", median_income, "\n")
# Demonstrates: "average" is ambiguous; mean and median diverge under skew

# ----------------------------------------------------
# 5. Parameter (fixed, unknown) vs Statistic (random) illustration
# ----------------------------------------------------
set.seed(123)
population <- rnorm(100000, mean = 50, sd = 10)   # true mu = 50 (a constant, just simulated here)
true_mu <- mean(population)   # in real life, this is UNKNOWN and FIXED

# Draw repeated samples -> statistic VARIES across samples (this is the point)
sample_means <- replicate(5, mean(sample(population, 30)))
print(sample_means)   # different every time -> statistic is a random variable
cat("True population mean (fixed constant):", true_mu, "\n")
