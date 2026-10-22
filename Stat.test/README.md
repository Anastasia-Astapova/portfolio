# Hypothesis Testing: Yandex.Books User Activity Analysis

**This is an educational project completed as part of a professional retraining course.**

## Tech Stack & Skills
- **Languages & Libraries:** Python (`pandas`, `matplotlib`, `scipy`)
- **Core Competencies:** Data Preprocessing & Cleaning, Exploratory Data Analysis (EDA), Hypothesis Testing, Welch’s t-Test, Result Interpretation & Business Insights

## Project Overview
This project investigates the hypothesis that users of the Yandex.Books application in Saint Petersburg spend significantly more time reading and listening to books compared to users in Moscow. 

## Key Steps & Workflow
- **Data Preparation:** Checked groups for intersections, removed duplicates, and performed exploratory data analysis (EDA) to verify group comparability (evaluating sizes, distributions, and baseline statistics).
- **Outlier Treatment:** Cleansed the dataset from extreme values to ensure robust statistical evaluation.
- **Statistical Testing:** Formulated hypotheses, selected an appropriate significance level, and executed **Welch’s t-test** to account for unequal sample sizes and differences in metric distributions between the groups.

## Results & Key Findings
- **Test Outcome:** The test yielded a $p$-value of **0.26**, which exceeds the chosen significance threshold. Consequently, we fail to reject the null hypothesis, finding no statistically significant evidence of a difference in reading/listening duration between Moscow and Saint Petersburg users.
- **Insights & Context:** 
  - Although absolute mean values showed a slight difference, high data dispersion rendered gap statistically insignificant.
  - The lack of significant difference is likely due to homogeneous user behavior across both major metropolitan areas, where digital service consumption habits, commuting patterns, and lifestyles remain closely aligned.