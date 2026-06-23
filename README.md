# Online Learning Engagement Analysis

## Project Overview

This project analyzes learner engagement behavior using HarvardX-MITx online learning platform data to identify key drivers of certification success, learner retention, and long-term engagement.

The objective is to understand how learner behavior influences certification outcomes and generate actionable product insights to improve learner retention, engagement, and completion rates.

Using exploratory data analysis, funnel analysis, cohort analysis, segmentation, and A/B/n testing simulation, this project evaluates how product interventions such as email reminders and reward incentives can improve certification performance.

This project is designed from a Product Analytics perspective, focusing on learner behavior, retention optimization, and data-driven product strategy.

---

## Dataset

This project uses the HarvardX-MITx Person-Course dataset, a large-scale public MOOC dataset containing learner enrollment, engagement, and certification records across multiple online courses from 2012 to 2013.

### Dataset Features

* 641,138 learner-course records
* Multiple engagement metrics across learning activities
* Certification outcomes
* Learner demographic information
* Course-level behavioral data

### Key Variables

* `registered`: Registration status
* `viewed`: Whether learner viewed course materials
* `explored`: Whether learner actively explored the course
* `certified`: Certification outcome (target variable)
* `nevents`: Total platform activity events
* `ndays_act`: Number of active learning days
* `nplay_video`: Number of video plays
* `nchapters`: Number of chapters completed
* `nforum_posts`: Number of forum posts

---

## Project Objectives

The main objective of this project is to identify the key behavioral drivers that influence learner retention and certification success in online education platforms.

This analysis aims to answer the following business questions:

* What factors most strongly influence certification outcomes?
* Which engagement behaviors are most predictive of learner success?
* How do retention and certification vary across learner cohorts?
* Which product interventions can improve certification rates most effectively?

The ultimate goal is to generate actionable product recommendations that improve learner engagement, retention, and course completion.

---

## Key Analyses

This project includes the following analytical modules:

### 1. Exploratory Data Analysis (EDA)

* Data structure inspection
* Missing value analysis
* Distribution analysis of key engagement metrics
* Outlier detection and log transformation

### 2. Funnel Analysis

Learner conversion funnel from registration to certification:

* Registered
* Viewed
* Explored
* Certified

This analysis identifies major drop-off points in the learner journey.

### 3. Engagement Metrics Analysis

Core engagement metrics analyzed:

* Platform activity events (`nevents`)
* Active learning days (`ndays_act`)
* Video plays (`nplay_video`)
* Chapters completed (`nchapters`)

This analysis evaluates how different engagement behaviors relate to learner success.

### 4. Segmentation Analysis

Learners were segmented into engagement groups using quartile analysis to compare certification rates across different engagement levels.

### 5. Cohort Analysis

Cohort analysis was conducted based on learner registration month to examine:

* Enrollment trends
* Retention trends
* Certification trends

This analysis helps identify seasonal patterns and cohort-level performance differences.

### 6. A/B/n Testing Simulation

A simulated product experiment was designed to compare intervention effectiveness:

* Control Group
* Email Reminder Group
* Reward Incentive Group

The goal was to evaluate which intervention most effectively improves certification outcomes.

---

## Key Findings

### 1. Chapter completion is the strongest predictor of certification success

Among all engagement metrics, chapter completion showed the strongest positive relationship with certification outcomes.

Learners with higher chapter completion consistently achieved significantly higher certification rates.

---

### 2. Sustained engagement strongly improves learner success

Longer active learning duration, higher platform activity, and greater video engagement all positively correlate with certification outcomes.

Retention is a major driver of successful course completion.

---

### 3. Learner behavior shows strong cohort patterns

Enrollment showed clear seasonal peaks aligned with academic and learning cycles.

Cohorts with higher retention consistently demonstrated higher certification rates.

---

### 4. Reward incentives outperform passive reminders

A/B/n testing simulation showed that both interventions improved certification outcomes.

Certification Rate by Group:

* Control: 2.76%
* Email Reminder: 3.40%
* Reward Incentive: 4.30%

Reward-based interventions delivered the highest certification performance.

---
## Business Recommendations

Based on the analysis, the following product strategies are recommended:

### 1. Prioritize chapter completion optimization

Since chapter completion is the strongest predictor of certification success, product improvements should focus on helping learners complete more chapters.

Potential strategies:

* Progress tracking
* Milestone nudges
* Chapter completion reminders

---

### 2. Improve learner retention through engagement interventions

Retention strongly influences certification outcomes.

Recommended retention strategies:

* Personalized reminders
* Progress-based notifications
* Learning streak incentives

---

### 3. Implement reward-based incentive systems

A/B/n testing suggests that reward-based interventions significantly outperform passive reminders.

Potential incentive mechanisms:

* Milestone reward points
* Coupon systems
* Gamified learning rewards

These strategies can improve learner motivation, retention, and certification outcomes.

---

## Tech Stack

* Python
* Pandas
* NumPy
* Matplotlib
* Statsmodels
* SQL (planned)
* Jupyter Notebook

## Repository Structure

```bash
data/
figures/
notebooks/
sql/
README.md
```
