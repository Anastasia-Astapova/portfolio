# A/B Test Analysis for Recommendation Algorithms

**This is an educational project completed as part of a professional retraining course.**

**Tech Stack**: Python (pandas, matplotlib, statmodels)

**Core Competencies:** EDA, A/B Testing, Hypothesis Testing, Z-test, Result Analysis & Monitoring 

## Project Overview

This project simulates the workflow of a Data Analyst at a company developing an entertainment app.
The Recommendation Systems team has developed a new recommendation algorithm that they believe delivers more engaging content tailored to each user. The goal of this analysis is to determine the parameters for an A/B test to validate this hypothesis and analyze the results.

## Key Steps & Workflow
- **Exploratory Data Analysis (EDA):** Examining the initial dataset and checking distributions.
- **A/B Test Design:** Calculating the required sample size and experiment duration.
- **Statistical Evaluation:** Running tests and checking metrics.
- **Results & Recommendations:** Assessing the p-value, checking for statistical significance, and providing data-driven conclusions.

## Conclusions
The experiment was designed with a minimum required sample size of 41,040 users per group and an estimated duration of 9 days. Ultimately, the test ran for 20 days, accumulating 100,005 session records across approximately 15,000 unique users per group. A two-sample Z-test yielded a p-value of 0.58, which exceeds the significance threshold, leading us to fail to reject the null hypothesis and leaving no statistically significant evidence that the new recommendation algorithm improved initial session success. Consequently, the recommendation is not to roll out the algorithm to production, as the changes showed no measurable positive impact on initial user engagement to justify maintenance and implementation costs.

