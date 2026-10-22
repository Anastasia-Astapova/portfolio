# SQL Exploratory Data Analysis & Ad-Hoc Queries: Fantasy Game Monetization

**This is an educational project completed as part of a professional retraining course.**

## Tech Stack & Skills
- **Database & Querying:** PostgreSQL / SQL (CTEs, Window Functions, Conditional Aggregations `FILTER (WHERE ...)`, Statistical Functions `PERCENTILE_DISC`, `STDDEV`)
- **Core Competencies:** Exploratory Data Analysis (EDA), Ad-Hoc Data Analysis, Monetization Metrics, Business Insights & Recommendations

## Project Overview
This project investigates user behavior, monetization dynamics, and in-game store performance for the fantasy game "Secrets of Darkwood" ("Секреты Темнолесья"). Using SQL, the analysis evaluates paying user conversion rates across character races, identifies behavioral patterns, examines in-game purchase distribution, and tests an ad-hoc hypothesis regarding character race difficulty and purchasing activity.

## Key Tasks & Workflow

### Part 1: Exploratory Data Analysis (EDA)
- **Paying Users Analysis:** 
  - Calculated the overall proportion of paying users relative to total registrations.
  - Analyzed the distribution and variation of paying user shares across different character races.
- **In-game Purchases Analysis:** 
  - Extracted core statistical metrics (total purchases, total revenue, min/max prices, average, median using `PERCENTILE_DISC`, and standard deviation) for purchase amounts.
  - Identified and filtered out anomalous zero-value transactions to ensure accuracy in subsequent calculations.
- **Item Popularity & Catalog Concentration:** 
  - Evaluated absolute and relative sales volumes for epic items, as well as the share of unique buyers who purchased each item at least once.

### Part 2: Ad-Hoc Analysis (Race & Activity Investigation)
- **Character Race Activity Study:** 
  - Addressed an ad-hoc request from the analytical and marketing teams to test the hypothesis that gameplay difficulty varies by race (requiring different amounts of epic item support).
  - Computed key metrics per character race using CTEs: total registered users, absolute and relative numbers of active buyers, paying buyers share among active buyers, average purchase count per buyer, average single-item price, and total spend per buyer.

## Key Findings & Insights

- **Monetization & Conversion:** The overall conversion rate of paying users stands at **17.69%**, remaining stable across character races (ranging from 17.07% for `Elf` to 19.37% for `Demon`), indicating no severe top-of-funnel imbalances.
- **Purchase Distribution & Skewness:** Transaction amounts exhibit strong right-skewness (mean of ~525.7 vs. median of ~74.86 "paradise petals", with a high standard deviation of 2,517.3), driven by a massive volume of micro-transactions alongside rare large purchases (max 486,615).
- **Catalog Monopoly:** Demand is heavily concentrated; **98% of all sales** are driven by just two items — *Book of Legends* (~77% of sales, bought by 88% of users) and *Bag of Holding* (~21% of sales, bought by 87% of users) — while 39 items have zero sales.
- **Race Difficulty Hypothesis:** The hypothesis that certain character races require significantly more purchases due to higher difficulty was **not supported**. The share of buying players remains tightly bound between 60% and 63% across all races. However, purchasing behavior varies: `Human` and `Angel` show high purchase frequency with lower average checks, whereas `Northman` purchase less frequently but have the highest average check.

## Recommendations for Marketing & Game Design
1. **Catalog Revision:** Audit the 39 unsold items and introduce bundle mechanics (e.g., pairing top-sellers with lower-demand items) to stimulate wider catalog engagement.
2. **Segmented Marketing:** Target `Human` players with high-frequency micro-discounts/packs, and `Northman` players with high-value, exclusive premium offers.
3. **Balance Check for `Elf`:** Investigate the `Elf` economy, as lower conversion and purchase activity might indicate that resources are acquired too easily through gameplay quests rather than the store.

---
*Feel free to check out the `query.sql` file in this repository for the complete SQL implementation and `.md` file for a more detailed analytical note.*