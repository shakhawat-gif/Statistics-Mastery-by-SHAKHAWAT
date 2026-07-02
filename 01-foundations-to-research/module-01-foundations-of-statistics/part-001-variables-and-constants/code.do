* Part 1 — Variables and Constants: Stata Implementation
* #StatsFromScratch

* ----------------------------------------------------
* 1. Creating and typing variables
* ----------------------------------------------------
clear
input height_cm num_children
172.5 0
165.0 2
180.2 1
158.9 3
169.4 0
end

* Qualitative - nominal (string then encode to category)
gen blood_group_str = "A" in 1
replace blood_group_str = "B" in 2
replace blood_group_str = "O" in 3
replace blood_group_str = "AB" in 4
replace blood_group_str = "O" in 5
encode blood_group_str, gen(blood_group)

* Qualitative - ordinal
gen satisfaction_str = "Low" in 1
replace satisfaction_str = "High" in 2
replace satisfaction_str = "Medium" in 3
replace satisfaction_str = "Low" in 4
replace satisfaction_str = "High" in 5
encode satisfaction_str, gen(satisfaction) label(satlbl)

* ----------------------------------------------------
* 2. Inspecting variable types
* ----------------------------------------------------
describe
codebook blood_group
codebook satisfaction

* ----------------------------------------------------
* 3. Demonstrating "mean is meaningless for nominal data"
* ----------------------------------------------------
summarize blood_group        // technically runs, but the mean of category CODES is meaningless
tabulate blood_group         // correct summary: frequency table
tabulate blood_group, sort   // mode = most frequent category

* ----------------------------------------------------
* 4. Mean vs Average illustration
* ----------------------------------------------------
clear
input income
20000
22000
21000
23000
150000
end

summarize income, detail
* Displays both Mean and Percentiles (median = p50)
* Illustrates mean vs median divergence under skew

* ----------------------------------------------------
* 5. Parameter (fixed) vs Statistic (random) illustration
* ----------------------------------------------------
clear
set obs 100000
set seed 123
gen population = rnormal(50, 10)
summarize population
* true_mu is fixed here at ~50, but in real research it is UNKNOWN

* Draw repeated samples of size 30, store the sample mean each time
clear
set obs 5
gen sample_mean = .
forvalues i = 1/5 {
    preserve
    clear
    set obs 100000
    set seed `i'
    gen population = rnormal(50, 10)
    sample 30, count
    summarize population
    local m = r(mean)
    restore
    replace sample_mean = `m' in `i'
}
list sample_mean
* Demonstrates: statistic (sample mean) VARIES across samples -> it is random
