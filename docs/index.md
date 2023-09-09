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

- Future annoucements will be posted here.

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

### Staff

| Instructor | email |  office |  office hours (OH) |  OH mode | 
| --- | --- | --- |  --- | --- |
| [Xin Bing](https://sites.coecis.cornell.edu/xinbing/) |  [xin.bing@utoronto.ca](mailto:xin.bing@utoronto.ca) | UY 9192 | LEC0101: Mon, 2PM-3PM <br> LEC0201: Mon, 3PM-4PM |  [Zoom link](https://utoronto.zoom.us/j/82134551693) | 

### TAs

| Section | TA  | OH | OH mode | 
| --- | --- | --- | --- |
| LECT0101 | Liam Welsh |  TBA | TBA |
|  | Junhao Zhu |   TBA | TBA |
|  | Weizheng Zhang |  TBA | TBA | 
| LECT0201 | Ziyi Liu |  TBA | TBA | 
|  | Haochen Song |   TBA|  TBA |
|  | Tong Li | TBA | TBA |

### Lectures 

| Section	| Time	| Location | 
| --- | --- | --- |
| LEC0101	| Wed 11AM-1PM | MP103 |
| LEC0201	| Wed 3PM-5PM | SS2118 |

### Tutorials 

| Section | Tutorial Session | Time | Location | TA | 
|--- | --- | --- | --- | --- |
|LEC0101 | 101 | Mon, 12PM-1PM | SS1083 | TBA  |
| | 102 |  |  SS2105 |  TBA
| | 103 |  |   UC52  | TBA |
|LEC0201| 201 | Mon, 4PM-5PM | SS1072 | TBA |
| | 202 | |  SS1074 | TBA |
| | 203 | | SS1087 | TBA |
 

---

<br />


## Homeworks & exams

|  | Out | Due |  Files | Credit | Content | 
|---|---|---|---|---|---|
| Homework 1 | Sep 21, 12 AM | Oct 4, 11:59 PM | <!-- [[hw1.pdf](/hws/hw1.pdf)]--> | 10% | Lec01-Lec03 |
| Homework 2 | Oct 5, 12 AM | Oct 18, 11:59 PM | <!-- [[hw2.pdf](/hws/hw2.pdf)]--> | 10% | Lec04-Lec05 |
| Midterm exam | Oct 25 |  |   | 30% | Lec01-Lec06 | 
| Homework 3 | Nov 2, 12 AM | Nov 15, 11:59 PM | <!-- [[hw3.pdf](/hws/hw3.pdf)] --> | 10% | Lec06-Lec08 |
| Homework 4 | Nov 16, 12 AM | Nov 29, 11:59 PM | <!-- [[hw4.pdf](/hws/hw4.pdf)] --> | 10% | Lec06-Lec10 |
| Final exam | TBA |  |  | 30% | Lec01-Lec12 |

---

<br />


## Lectures 

This is a preliminary schedule; it may change throughout the term. 

| Dates	| Lecture Topic	| Lecture Slides | Tutorial	| Suggested Readings |
| --- | --- | --- | --- | --- |
| Sep 11 | Logistics and introduction | [[Lec01.pdf](/lectures/lec01.pdf)] | No tutorial |  ISL 1, 2.1  |
| Sep 13 | Metric of the fit, linear regression | [[Lec02.pdf](/lectures/lec02.pdf)] | Sep 18, [[Notes](/tutorials/tut01.pdf)], [[R code](/tutorials/tut01.R)] | ISL 2.2, 2.3, 3.1, 3.2 |

<!--  | Sep 20 | Model selection| [[Lec03.pdf](/lectures/lec03.pdf)] | Oct 2, [[R code](/tutorials/tut02.R)] |  [[Linear algebra review](/tutorials/tut02.pdf)] <br /> ISL 3.3, 6.1.3 |
| Sep 27 | Cross-validation, <br /> subset selection under linear models | [[Lec04.pdf](/lectures/lec04.pdf)] | Oct 1, Thanksgiving | ISL 5.1, 6.1.1,  6.1.2 <br /> ESL 7.10|
| Oct 4 | Cross-validation, <br /> subset selection under linear models | [[Lec04.pdf](/lectures/lec04.pdf)] | Oct 10, Thanksgiving | ISL 5.1, 6.1.1,  6.1.2 <br /> ESL 7.10|
| Oct 11 | Regularized linear regression,  <br /> gradient descent | [[Lec05.pdf](/lectures/lec05.pdf)] | Oct 17, [[Notes](/tutorials/tut03.pdf)], [[Extra notes](/tutorials/tut3_Note.pdf)] | ISL 6.2, 6.4 <br /> PRML 4.1, 4.3 <br /> ConvOpt 2.1-2.3, 3.1, 3.2, 4.1, 4.2 |
| Oct 18 | Intro to classification, logistic regression, <br /> stochastic gradient descent | [[Lec06.pdf](/lectures/lec06.pdf)] | No tutorial | ISL 4.1-4.3 <br /> ESL 4.4 <br /> PRML 4.1.2 <br /> ConvOpt 2.1-2.3, 3.1, 3.2, 4.1, 4.2 |
| Oct 23 | Discriminant analysis: <br /> LDA, QDA, naive Bayes| [[Lec07.pdf](/lectures/lec07.pdf)] | Oct 31, [[R code](/tutorials/tut04.R)], [[Calculus](/tutorials/notes_on_multivariable_calculus.pdf)]  | ISL 4.4-4.6 <br /> ESL 4.3 |
| Nov 1 | Support vector machines | [[Lec08.pdf](/lectures/lec08.pdf)] | No tutorial | ISL 9.1-9.5 <br /> ESL 12.1, 12.2 <br /> ConvOpt 2.5, 5.1, 5.2 |
| Nov 15 | Moving beyond linearity, k nearest neighbour | [[Lec09.pdf](/lectures/lec09.pdf)] | Nov 21, [[R code](/tutorials/tut05.R)] | ISL 7 <br /> ESL 5.1, 5.2 |
| Nov 22 | Tree based approaches: decision tree | [[Lec10.pdf](/lectures/lec10.pdf)] | No tutorial | ISL 8.1  <br /> ESL 9.2  |
| Nov 29 | Bagging, boosting and random forest; <br /> Bootstrap | [[Lec11.pdf](/lectures/lec11.pdf)] | Dec 5, [[R code](/tutorials/tut06.R)] | ISL 5.2, 5.3.4, 8.2 <br /> ESL 7.11, 8.7, 10.1, 15 <br /> [[Notes on gradient boosting machine](/tutorials/gradient_boosting_machine.pdf)] |
| Dec 6 | Unsupervised learning: K-means clustering and PCA | [[Lec12.pdf](/lectures/lec12.pdf)] | Class ends | ISL 10.1 - 10.3 <br /> ESL 14.3 <br /> PRML 9.1 |
-->

