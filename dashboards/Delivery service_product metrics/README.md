# Key Business Metrics Calculation for "Vsyo.iz.cafe" Food Delivery Service

An educational data analytics and metric visualization project built with **Yandex DataLens** and **SQL**.

---

## Project Overview & Business Context

In this educational project, the goal was to analyze the core business performance indicators of the food delivery service **"Vsyo.iz.cafe"** in the city of Saransk from May to June 2021.

The objective was to develop SQL queries, build interactive visualizations in Yandex DataLens, assemble a final dashboard and summarize actionable insights in an analytical memo for a senior data analyst.

---

## Tech Stack & Tools

* **BI Platform:** Yandex DataLens (building QL-charts and interactive dashboards)
* **Query Language:** SQL (aggregations, window functions, date manipulation, and cohort analysis)

---

## Dashboard Structure & Key Metrics

The dashboard is designed to track metric dynamics, detect anomalies, and analyze user behavior. The set of visualizations includes:

1. **DAU (Daily Active Users):** Number of unique active users (who placed an order) per day.
2. **CR (Conversion Rate):** Share of users who successfully completed an order.
3. **Average Order Value (AOV):** Dynamics of the average purchase amount per user.
4. **Retention Rate (RR):** User retention rate within the first week after registration (overall and broken down by month).
5. **Top 3 Restaurants:** Ranking of restaurants by LTV (cumulative revenue over the period).
6. **Top 5 Dishes:** Ranking of dishes by LTV with detailed performance breakdown.

---

## QL-Query Implementation Example (Retention Rate)

To calculate the weekly user retention rate, the following SQL query was used to combine first-visit records with daily user activity:

```sql
-- Calculate new users by their first product visit date
WITH new_users AS
  (SELECT DISTINCT first_date,
                   user_id
   FROM rest_analytics.analytics_events AS events
   JOIN rest_analytics.cities cities ON events.city_id = cities.city_id
   WHERE first_date BETWEEN '2021-05-01' AND '2021-06-24'
     AND city_name = 'Саранск'),
-- Calculate active users by event date
active_users AS
  (SELECT DISTINCT log_date,
                   user_id
   FROM rest_analytics.analytics_events AS events
   JOIN rest_analytics.cities cities ON events.city_id = cities.city_id
   WHERE log_date BETWEEN '2021-05-01' AND '2021-06-30'
     AND city_name = 'Саранск'),
-- Join new and active user tables
daily_retention AS
  (SELECT n.user_id,
          first_date,
          log_date::date - first_date::date AS day_since_install
   FROM new_users AS n
   JOIN active_users AS a ON n.user_id = a.user_id
   AND log_date >= first_date)
SELECT DISTINCT CAST(DATE_TRUNC('month', first_date) AS date) AS "Месяц",
       day_since_install,
       COUNT(DISTINCT user_id) AS retained_users,
       ROUND((1.0 * COUNT(DISTINCT user_id) / MAX(COUNT(DISTINCT user_id)) OVER (PARTITION BY CAST(DATE_TRUNC('month', first_date) AS date)
ORDER BY day_since_install))::numeric, 2) AS retention_rate
FROM daily_retention
WHERE day_since_install < 8
GROUP BY "Месяц", day_since_install
ORDER BY "Месяц", day_since_install;
____
## Repository Structure

```text
.
├── dashboard_demo.mp4       # Video demonstration of dashboard functionality
├── analytical_memo.md       # Detailed analytical memo with strategic insights & recommendations
└── README.md                # Project documentation