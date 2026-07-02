* C1 — Introduction to Statistics: Stata Implementation
* #StatsFromScratch — Module 0

* ----------------------------------------------------
* 1. Statistics in the PLURAL sense (raw aggregate data)
* ----------------------------------------------------
clear
input population
1200
980
1450
1100
1340
end
list

* ----------------------------------------------------
* 2. Statistics in the SINGULAR sense (the discipline/method)
* ----------------------------------------------------
* Collect -> Organize -> Analyze -> Interpret -> Present

clear
input exam_score
55
62
71
48
90
76
65
58
82
70
end

* Organize
sort exam_score
list

* Analyze (Descriptive Statistics)
summarize exam_score, detail

* Present
histogram exam_score, title("Exam Score Distribution") xtitle("Score")

* ----------------------------------------------------
* 3. Descriptive vs Inferential Statistics — illustrated
* ----------------------------------------------------

* DESCRIPTIVE
summarize exam_score
display "Descriptive: sample mean = " r(mean)

* INFERENTIAL: one-sample t-test against a hypothesized population mean of 60
ttest exam_score == 60
display "Inferential: tests whether TRUE POPULATION mean differs from 60"

* ----------------------------------------------------
* 4. Limitation illustration: aggregates vs individuals
* ----------------------------------------------------
summarize exam_score
display "Class average: " r(mean)
list exam_score in 4
display "Individual student 4's score may differ substantially from the average —"
display "illustrating the ecological fallacy risk."
