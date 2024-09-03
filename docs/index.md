---
layout: home
title: "STA314: Statistical Methods for Machine Learning I"
---

## Overview

Machine learning (ML) is a set of techniques that allow computers to learn from data and past experience, rather than requiring humans to specify the desired behaviour by hand. ML has become increasingly central both in statistics as an academic discipline, and in the data science industry. This course provides a broad introduction to commonly used ML methods, as well as the key statistical concepts underlying ML. It serves as a foundation for more advanced courses, such as STA414 (Statistical Methods for Machine Learning II).

We will cover popular statistical methods for supervised and unsupervised learning from data as well as important concepts used in the field, including: training error, test error and cross-validation; classification, regression, and logistic regression; variable selection; penalized regression; principal components analysis; stochastic gradient descent; decision trees and random forests; k-means clustering and nearest neighbour methods. Computational tutorials will support effective application of these methods.

---

<br />

## Annoucement

<!-- 
- Homework 4 solution is available below. 
- Homework 3 solution is available below. 
- The last tutorial will be on Dec 4th. 
- Homework 4 will be due on Nov 29th, 11:59pm. 
- Midterm will be Oct 25th. We will have makeup classes on Oct 23rd. 
- Homework 1 will be released at 11:59pm on Septmeber 20th via Crowdmark. -->
- The first lecture starts on September 4th, Wednesday.
  
---
<br />

## Course information

### Course email and textbooks

- Course email: [sta314@course.utoronto.ca](mailto:sta314@course.utoronto.ca) (for requests and communication with the teaching group)
- Textbook: [An Introduction to Statistical Learning (ISL)](https://www.statlearning.com) 
- References:
  - Elements of Statistical Learning (ESL).
  - Pattern Recognition and Machine Learning (PRML).
  - Convex Optimization by Boyd and Vandenberghe (ConvOpt).
- Piazza: [sign-up link](https://piazza.com/utoronto.ca/fall2024/sta314).
- [Syllabus](/lectures/syllabus.pdf).

### Staff

| Instructor | email |  office |  office hours (OH) |  OH mode | 
| --- | --- | --- |  --- | --- |
| [Xin Bing](https://www.statistics.utoronto.ca/people/directories/all-faculty/xin-bing) |  [xin.bing@utoronto.ca](mailto:xin.bing@utoronto.ca) | UY 9192 | Mon, 1pm-3pm  | TBA <!--[Zoom link](https://utoronto.zoom.us/j/89637295142)--> | 

### TAs

| Section | TA  | OH | OH mode |  
| --- | --- | --- | --- |  
| LEC0101 | Haochen Song | Tue (5pm-6pm) | [Zoom link](https://utoronto.zoom.us/j/81683760499) |  
|  | Xiaochuan Shi | Mon (5pm-6pm) | [Zoom link](https://utoronto.zoom.us/j/82036868816) |  
|  | Jorge Arturo Esquivel Fuente  | Tue (11am-12am) | [Zoom link](https://utoronto.zoom.us/j/84836574590) | 
|	 | Junhao Zhu |	Fri (9am-10am) | in-person |  
| LEC0201 | Liam Welsh	| Thu (9am-10am) |  Zoom link  |  
|	 | Luis Sierra Muntan\'{e} |  Tue (10am-11am)	 | in-person |  
|	 | Konstantinos Christopher Tsiolis   | Thu (4pm-5pm) |  [Zoom link](https://utoronto.zoom.us/j/88132149228) |  
|	 | Rafael Alexander Valencia Sanchez  | Thu (12:30pm-1:30pm)	| [Zoom link](https://utoronto.zoom.us/j/83303506489)  | 

### Lectures 

| Section	| Time	| Location | 
| --- | --- | --- |
| LEC0101	| Mon (10am-11am), Wed (11am-1pm) | MP103 |
| LEC0201	| Mon (3pm-4pm), Wed (3pm-5pm) | BR200 |

### Tutorials 

| Section | Session | Time | Location | TA | 
|--- | --- | --- | --- | --- |
| LEC0101 | 101 | Mon, 11am-12pm | TBD | Haochen  |
| | 102 |  |  TBD |  Xiaochuan |
| | 103 |  |   TBD  | Arturo |
| | 104 |  |  TBD | Junhao |
|LEC0201| 201 | Mon, 4pm-5pm | TBD | Luis |
| | 202 | |  TBD | Haochen |
| | 203 | | TBD | K.C. |
| | 204 | | TBD | Alex |
 

---

<br />


## Grading scheme

|  | Date | Time \& Location |  Credit | Content | Solution |
|---|---|---|---|---| --- |
| Quizzes | NA | During tutorials | 5\% | | | 
| Midterm one | Sep 25 | LEC0101: 11am-1pm, EX100   <br> LEC0201: 3pm-5pm, EX100  | 25% | TBA |<!--[[sol-101.pdf](/hws/midterm/midterm-101-sol.pdf)] <br> [[sol-201.pdf](/hws/midterm/midterm-201-sol.pdf)]--> |
| Midterm two | Oct 23 | LEC0101: 11am-1pm, EX200    <br> LEC0201: 3pm-5pm, EX100  | 25% | TBA | <!--[[sol-101.pdf](/hws/midterm/midterm-101-sol.pdf)] <br> [[sol-201.pdf](/hws/midterm/midterm-201-sol.pdf)]--> |
| Final exam | TBA |  |   25% | TBA | |
| Course project | TBA | Throughout the semester | 20\% | |
<!--| [Homework 3](/hws/hw3/hw3.pdf) | Nov 2, 12 AM | Nov 19, 11:59 PM | 10% | Lec06-08 | [[Q1-Q3.pdf](/hws/hw3/hw3_solution_Q1_Q3.pdf)],[[Q4-Q5.pdf](/hws/hw3/hw3_solution_Q4Q5.pdf)] |
| [Homework 4](/hws/hw4/hw4.pdf) | Nov 16, 12 AM | Nov 29, 11:59 PM  | 10% | Lec06-10 | [[sol-derivation](/hws/hw4/hw4_solution_derivation.pdf)], [[sol-coding](/hws/hw4/hw4_solution_coding.pdf)]  |-->
---

<br />


## Lectures 

This is a preliminary schedule; it may change throughout the term. 

| Dates	| Lecture Topic	| Lecture Slides | Tutorial	| Suggested Readings |
| --- | --- | --- | --- | --- |
| Sep 4 | Course logistics <br /> Introduction to Statistical Learning  <br /> The bias-variance tradeoff |  [[Lec00.pdf](/lectures/lec00.pdf)],[[Lec01.pdf](/lectures/lec01.pdf)]  | No tutorial |  ISL 1, 2.1 - 2.3   |
<!--
| Sep 9 (Mon) | Linear regression | [[Lec02.pdf](/lectures/lec02.pdf)] | Sep 9,   [[Notes](/tutorials/tut01.pdf)], [[R code](/tutorials/tut01.R)]   |  [[Linear algebra review](/tutorials/review_linear_algebra.pdf)] <br />  ISL 3.1, 3.2, 3.3, 3.6 |
| Sep 11 | Model selection under linear models, <br /> cross-validation | [[Lec03.pdf](/lectures/lec03.pdf)] | Sep 25, [[R code](/tutorials/tut02.R)] | ISL 5.1, 6.1.1,  6.1.2, 6.1.3 <br /> ESL 7.10 |
| Sep 16 (Mon) | Subset selection under linear models |  [[Lec04.pdf](/lectures/lec04.pdf)] | Oct 2, [[Rmd](/tutorials/TUT3.Rmd)] | ISL 6.1.1,  6.1.2 |
| Sep 18 | Regularized linear regression |  [[Lec05.pdf](/lectures/lec05.pdf)] | No tutorial, Thanksgiving <br /> [[OLS vs Ridge](/tutorials/tut03.pdf)] (optional reading) |  ISL 6.2, 6.4 <br /> ESL 7.10 |
| Sep 23 (Mon) | Move beyond linearity | [[Lec06.pdf](/lectures/lec06.pdf)] | [[Notes](/tutorials/tut03.pdf)], [[Extra notes](/tutorials/tut3_Note.pdf)] | ISL 7.1-7.4, 7.6, 7.7  |
| Sep 25 | Midterm one | | | | 
| Sep 30 (Mon) | Move beyond linearity | | | |
| Oct 2  | Introduction to classification <br />  Logistic regression |  [[Lec07.pdf](/lectures/lec07.pdf)] | Oct 30, [[Rmd](/tutorials/tut04.Rmd)]  | ISL 4.1-4.6 <br /> ESL 4.3, 4.4 |
| Oct 7 (Mon)  | Gradient descent|  [[Lec08.pdf](/lectures/lec08.pdf)]  | No tutorial | ISL 9.1-9.5 <br /> ESL 12.1, 12.2 <br /> PRML 4.1, 4.3 <br /> ConvOpt 2.1-2.3, 3.1, 3.2, 4.1, 4.2 <br /> [[Multivariate calculus](/tutorials/notes_on_multivariable_calculus.pdf)] |
| Oct 9  | Multi-class logistic regression, <br /> discriminant analysis | [[Lec09.pdf](/lectures/lec09.pdf)] | Nov 20, [[Rmd](/tutorials/TUT05.qmd)] |  ISL 4.3-4.6 <br /> ESL 5.1, 5.2 <br />  ConvOpt 2.5, 5.1, 5.2 |
| Oct 16 | Tree based approaches: decision tree | [[Lec10.pdf](/lectures/lec10.pdf)]  | No tutorial | ISL 8.1  <br /> ESL 9.2  |
| Oct 23 | Midterm two | | | |
| Nov 6  | Bootstrap, bagging, <br /> random forest, boosting |  [[Lec11.pdf](/lectures/lec11.pdf)]  |  Dec 4, [[Rmd](/tutorials/tut06.Rmd)] | ISL 5.2, 5.3.4, 8.2 <br /> ESL 7.11, 8.7, 10.1, 15 <br /> [[Notes on gradient boosting machine](/tutorials/gradient_boosting_machine.pdf)] |
| Nov 13 | | | | |
| Nov 20 | | | | |
| Nov 27 | Unsupervised learning: K-means clustering and PCA |  [[Lec12.pdf](/lectures/lec12.pdf)] | Class ends | ISL 10.1 - 10.3 <br /> ESL 14.3 <br /> PRML 9.1 | 
-->

