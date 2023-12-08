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

- Homework 4 solution is available below. 
- Homework 3 solution is available below. 
- The last tutorial will be on Dec 4th. 
- Homework 4 will be due on Nov 29th, 11:59pm. 
- Midterm will be Oct 25th. We will have makeup classes on Oct 23rd. 
- Homework 1 will be released at 11:59pm on Septmeber 20th via Crowdmark. 
- The first lecture starts on September 11th. 

---
<br />

## Course information

### Course email and textbooks

- Course email: [sta314@utoronto.ca](mailto:sta314@utoronto.ca) (for requests and communication with instructors)
- Textbook: [An Introduction to Statistical Learning (ISL)](https://www.statlearning.com) 
- References:
  - Elements of Statistical Learning (ESL).
  - Pattern Recognition and Machine Learning (PRML).
  - Convex Optimization by Boyd and Vandenberghe (ConvOpt).
- Piazza: [sign-up link](https://piazza.com/utoronto.ca/fall2023/sta314h1).
- [Syllabus](/lectures/syllabus.pdf).

### Staff

| Instructor | email |  office |  office hours (OH) |  OH mode | 
| --- | --- | --- |  --- | --- |
| [Xin Bing](https://sites.coecis.cornell.edu/xinbing/) |  [xin.bing@utoronto.ca](mailto:xin.bing@utoronto.ca) | UY 9192 | Mon, 3:00PM-4:00PM <br> Tue, 3:00PM-4:00PM |  [Zoom link](https://utoronto.zoom.us/j/89637295142) | 

### TAs

| Section | TA  | OH | OH mode | 
| --- | --- | --- | --- |
| LEC0101 | Liam Welsh |  Fri, 11AM-12PM | [Zoom link](https://utoronto.zoom.us/j/85857947465) |
|  | Junhao Zhu |  Mon, 9AM-10AM | In-person, SS621 |
|  | Weizheng Zhang |  Tue, 10AM-11AM | [Zoom link](https://utoronto.zoom.us/j/82071678230) | 
| LEC0201 | Ziyi Liu |  Thu, 1PM-2PM | [Zoom link](https://utoronto.zoom.us/j/82903418818) | 
|  | Haochen Song |  Fri, 9AM-10AM |  [Zoom link](https://utoronto.zoom.us/j/87311196394) |
|  | Tong Li | Mon, 10AM-11AM | [Zoom link](https://utoronto.zoom.us/j/87216458189) |

### Lectures 

| Section	| Time	| Location | 
| --- | --- | --- |
| LEC0101	| Wed, 11AM-1PM | MP103 |
| LEC0201	| Wed, 3PM-5PM | SS2118 |

### Tutorials 

| Section | Tutorial Session | Time | Location | TA | 
|--- | --- | --- | --- | --- |
| LEC0101 | 101 | Mon, 12PM-1PM | SS1083 | Junhao  |
| | 102 |  |  SS2105 |  Weizheng |
| | 103 |  |   UC52  | Liam |
|LEC0201| 201 | Mon, 4PM-5PM | SS1072 | Haochen |
| | 202 | |  SS1074 | Ziyi |
| | 203 | | SS1087 | Tong |
 

---

<br />


## Homeworks & exams

|  | Out | Due |  Credit | Content | Solution |
|---|---|---|---|---| --- |
|  [Homework 1](/hws/hw1/hw1.pdf) | Sep 21, 12 AM | Oct 4, 11:59 PM | 10% | Lec01-03 |  [[Q1-Q4.pdf](/hws/hw1/hw1_Q1-Q4.pdf)],[[Q5.pdf](/hws/hw1/hw1_Q5.pdf)]  |
|  [Homework 2](/hws/hw2/hw2.pdf) | Oct 5, 12 AM | Oct 18, 11:59 PM  | 10% | Lec04-05 | [[Q1.pdf](/hws/hw2/hw2_Q1.pdf)],[[Q4-Q5.pdf](/hws/hw2/hw2_Q2-Q4.pdf)] |
| Midterm exam | Oct 25, location: EX200 | LEC0101, 11AM-1PM   <br> LEC0201, 3PM-5PM  | 30% | Lec01-06 |[[sol-101.pdf](/hws/midterm/midterm-101-sol.pdf)] <br> [[sol-201.pdf](/hws/midterm/midterm-201-sol.pdf)] |
| [Homework 3](/hws/hw3/hw3.pdf) | Nov 2, 12 AM | Nov 19, 11:59 PM | 10% | Lec06-08 | [[Q1-Q3.pdf](/hws/hw3/hw3_solution_Q1_Q3.pdf)],[[Q4-Q5.pdf](/hws/hw3/hw3_solution_Q4Q5.pdf)] |
| [Homework 4](/hws/hw4/hw4.pdf) | Nov 16, 12 AM | Nov 29, 11:59 PM  | 10% | Lec06-10 | [[sol-derivation](/hws/hw4/hw4_solution_derivation.pdf)], [[sol-coding](/hws/hw4/hw4_solution_coding.pdf)]  |
| Final exam | Dec 9, 2-4 PM |  |   30% | Lec01-11 | |

---

<br />


## Lectures 

This is a preliminary schedule; it may change throughout the term. 

| Dates	| Lecture Topic	| Lecture Slides | Tutorial	| Suggested Readings |
| --- | --- | --- | --- | --- |
| Sep 11 | Logistics and introduction |  [[Lec00.pdf](/lectures/lec00.pdf)]  | No tutorial |  ISL 1  |
| Sep 13 | Introduction to Statistical Learning, <br /> the bias-variance tradeoff | [[Lec01.pdf](/lectures/lec01.pdf)] | Sep 18,   [[Notes](/tutorials/tut01.pdf)], [[R code](/tutorials/tut01.R)]   |  [[Linear algebra review](/tutorials/review_linear_algebra.pdf)] <br /> ISL 2.1, 2.2, 2.3 |
| Sep 20 | Linear regression| [[Lec02.pdf](/lectures/lec02.pdf)] | Sep 25, [[R code](/tutorials/tut02.R)] | ISL 3.1, 3.2, 3.3, 3.6 |
| Sep 27 | Model selection under linear models, <br /> cross-validation | [[Lec03.pdf](/lectures/lec03.pdf)] | Oct 2, [[Rmd](/tutorials/TUT3.Rmd)] | ISL 5.1, 6.1.1,  6.1.2, 6.1.3 <br /> ESL 7.10|
| Oct 4 | Subset selection under linear models, <br /> regularized linear regression | [[Lec04.pdf](/lectures/lec04.pdf)] | No tutorial, Thanksgiving <br /> [[OLS vs Ridge](/tutorials/tut03.pdf)] (optional reading) |  ISL 6.1.1,  6.1.2, 6.2, 6.4 <br /> ESL 7.10 |
| Oct 11 | More on regularized linear regression  | [[Lec05.pdf](/lectures/lec05.pdf)] |  Oct 16  <!-- [[Notes](/tutorials/tut03.pdf)], [[Extra notes](/tutorials/tut3_Note.pdf)]--> | ISL 6.2, 6.4 |
| Oct 18 | Move beyond linearity  |  [[Lec06.pdf](/lectures/lec06.pdf)]  | No tutorial | ISL 7.1-7.4, 7.6, 7.7  |
| Oct 23 | Introduction to classification  |  [[Lec07.pdf](/lectures/lec07.pdf)] | Oct 30, [[Rmd](/tutorials/tut04.Rmd)]  | ISL 4.1, 4.2 |
| Nov 1 | Logistic regression, gradient descent|  [[Lec08.pdf](/lectures/lec08.pdf)]  | No tutorial | ISL 4.3-4.6, 9.1-9.5 <br /> ESL 4.3, 4.4, 12.1, 12.2 <br /> PRML 4.1, 4.3 <br /> ConvOpt 2.1-2.3, 3.1, 3.2, 4.1, 4.2 <br /> [[Multivariate calculus](/tutorials/notes_on_multivariable_calculus.pdf)] |
| Nov 15 | Multi-class logistic regression, <br /> discriminant analysis | [[Lec09.pdf](/lectures/lec09.pdf)] | Nov 20, [[Rmd](/tutorials/TUT05.qmd)] |  ISL 4.3-4.6 <br /> ESL 5.1, 5.2 <br />  ConvOpt 2.5, 5.1, 5.2 |
| Nov 22 | Tree based approaches: decision tree | [[Lec10.pdf](/lectures/lec10.pdf)]  | No tutorial | ISL 8.1  <br /> ESL 9.2  |
| Nov 29 | Bootstrap, bagging, <br /> random forest, boosting |  [[Lec11.pdf](/lectures/lec11.pdf)]  |  Dec 4, [[Rmd](/tutorials/tut06.Rmd)] | ISL 5.2, 5.3.4, 8.2 <br /> ESL 7.11, 8.7, 10.1, 15 <br /> [[Notes on gradient boosting machine](/tutorials/gradient_boosting_machine.pdf)] |
| Dec 6 |  Unsupervised learning: K-means clustering and PCA |  [[Lec12.pdf](/lectures/lec12.pdf)] | Class ends | <!-- ISL 10.1 - 10.3 <br /> ESL 14.3 <br /> PRML 9.1 --> |


