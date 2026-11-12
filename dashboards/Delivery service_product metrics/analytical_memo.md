# Analytical Memo: Key Business Metrics for "Vsyo.iz.cafe" Food Delivery Service (Saransk)

**Author:**  Anastasiia Astapova
**Date:** 06.06.2026  
**Objective:** Analyze the key business metrics of the food delivery service "Vsyo.iz.cafe" in Saransk for the period from May 1 to June 30, 2021.

---

## Key Metrics Analysis

### 1. DAU (Daily Active Users)

#### Metric Dynamics
* **Pronounced Peaks at the Beginning of Months:** Maximum DAU figures are recorded in the first week of May (peaking on May 4 at 85 users) and the first decade of June (peaking on June 11 at 84 users).
* **Intra-Week Seasonality:** Throughout the entire period, user activity on weekdays (especially Tuesday, Wednesday, and Thursday) is consistently higher than on weekends. Saturdays and Sundays regularly show a drop in demand.
* **Overall Downward Trend Toward the End of the Period:** In the second half of June, activity gradually declines, with DAU falling to very low levels at the end of the month (26–33 users).

#### Potential Causes
* **Holidays and Beginning-of-Month Factor:** The surge in early May is likely driven by the May holidays and extended weekends. High activity in early June may be linked to the launch of summer marketing promotions or menu updates. Additionally, the start of the month is typically a period of increased spending, as most users receive their salaries during this time.
* **Office-Driven Consumption:** Delivery is ordered more frequently on workdays (likely office lunches or quick dinners after work). On weekends, residents prefer to cook at home, travel out of town, or dine out in person.
* **Seasonal Demand Decline:** The drop in metrics at the end of June coincides with the onset of consistently warm summer weather— users increasingly opt for walks, outdoor terraces, and picnics, reducing home delivery order volumes. Moreover, this is a peak period for summer vacations.

#### Recommendations
* **Weekend Retention:** Develop and launch special "family" combo deals or delivery discounts valid strictly on Saturdays and Sundays to smooth out weekend dips.
* **Weekday Optimization:** Strengthen focus on the business lunch and corporate meal segments (e.g., introducing lunch subscriptions or volume-based order discounts), as weekdays are the primary DAU driver.
* **Mitigating the Summer Slump:** Adapt the menu to seasonal demand (light dishes, refreshing beverages) and launch targeted delivery ads for popular suburban locations and recreation areas.

---

### 2. Conversion Rate (CR)

#### Metric Dynamics
* **Localized High-Conversion Peaks:** Peak conversion rates occur at the beginning of the period (May 1 and May 3–4 at 0.41–0.43) and on specific days in June (June 3 at 0.38, June 30 at 0.37).
* **Stable Mid-June Plateau:** Unlike DAU, which fluctuated significantly in June, conversion remained stable from June 5 to June 17 within a narrow corridor of 0.26–0.34.
* **Sharp Localized Drops:** Brief but deep drops in conversion below the 20% mark are noticeable across both months. The lowest points were recorded on June 18 (0.18) and May 28 (0.19).
* **No Clear Correlation with Days of the Week:** Unlike DAU, conversion is not strictly tied to weekdays or weekends. High rates (0.34–0.35) appear on both Sundays (May 23, June 6) and Thursdays (May 27, June 3).

#### Potential Causes
* **High-Intent Traffic During Holidays and Month-End:** High CR on May 1–4 indicates that users opening the app had a clear intent and purposefully placed orders. The CR spike on the very last day of June (June 30) may be tied to deadlines for expiring monthly bonuses or promo codes.
* **Technical Glitches:** Sudden, sharp drops in CR (such as falling to 0.18 on June 18 following a stable week) may signal external issues, such as technical failures during the checkout or payment stages in the app.

#### Conclusions and Recommendations
* Product conversion maintains a solid average level (mostly 0.25–0.33), but suffers from sharp short-term drops and does not scale proportionally with traffic (DAU) growth.
* Schedule a review of engineering logs and app stability for the dates of deep drops (especially May 28 and June 18) to check for payment gateway (acquiring) or server outages.
* Conduct a cohort-based funnel analysis to identify the exact stage where users drop off.

---

### 3. Average Order Value (AOV)

#### Metric Dynamics
* The average order value in June was ~12 RUB (9%) higher than in May.

#### Potential Causes
* Promotional campaigns aimed at increasing basket size may have been launched for the start of summer.
* Aggregator pricing policies could also explain the increase—specifically, raising the minimum order threshold for free delivery or increasing the service fee in June.

#### Conclusions and Recommendations
* To boost AOV during slower months like May, introduce cross-selling incentives using coupons valid through the end of spring.

---

### 4. Retention Rate (RR)

#### Metric Dynamics
* By the end of the first week, only 4% of users are typically retained. A sharp drop occurs on Day 1 after registration, where retention falls to 14%. The decline then levels off, reaching 4–5% by Day 3, suggesting that a "core" group of satisfied buyers forms by the third day.
* Comparing first-week retention between May and June shows that May figures are higher overall: by the end of the seventh day (Day 7), 5% of the May cohort returned to the service, compared to 3% for the June cohort. However, the sharp Day 1 drop is equally characteristic of both cohorts.

#### Potential Causes
* The steep drop to 14% on Day 1 indicates that the vast majority of acquired users either fail to see the app's value after their first session or encounter an unintuitive interface.

#### Conclusions and Recommendations
* Focus heavily on Day 1 retention. Potential solutions include introducing welcome bonuses, gamification, or personalized restaurant curations immediately after registration to raise Day 1 Retention from 14% to at least 25–30%.
* Implement user reactivation workflows on Days 2 and 3, such as automated push-notification sequences reminding users of expiring welcome bonuses or featuring "Trending in Saransk Right Now" lists.

---

### 5. Top 3 Restaurants by LTV

#### Metric Dynamics
* The restaurants **"Gurmanskoe Naslazhdenie"** (LTV ~170,500 RUB) and **"Gastronomicheskiy Shtorm"** (LTV ~164,500 RUB) generate the bulk of the aggregator's revenue in Saransk, outperforming third-place **"Shokoladniy Ray"** (LTV ~61,200 RUB) by a wide margin.
* Non-spicy meat dishes lead the top 5 most profitable menu items. However, a data anomaly is present: 4 out of the top 5 dishes are simultaneously tagged as containing both meat and fish.

#### Potential Causes
* The leaders' dominance stems from their format: both offer full, hearty menus (meat and fish dishes). Judging by its name, "Shokoladniy Ray" has a narrow confectionery specialization, which limits its average check and order frequency.
* The simultaneous presence of "meat" and "fish" tags on items like "Beef Shashlik..." or "Salmon Medallions" is highly likely due to incorrect data entry in the `dishes` catalog by the restaurants or the aggregator. A less likely explanation is complex recipes combining meat and fish-based sauces.

#### Conclusions and Recommendations
* Improve quality control for product data (dish tags), as inaccurate metadata can confuse or mislead users (e.g., customers with allergies).
* Initiate negotiations with the "Shokoladniy Ray" chain to expand their menu with savory snack options (sandwiches, savory croissants, breakfast combos) to help increase their LTV.

---

## General Recommendations

* **Shift Focus from Traffic Volume to Quality:** Move away from aggressively acquiring high volumes of low-intent traffic (which diluted conversion and worsened Retention Rate in June). Evaluate ad campaign performance not by registration volume, but by Cost per Retained User (Day 7 Retention).
* **Improve Catalog Data Quality:** Collaborate with partner restaurants ("Gurmanskoe Naslazhdenie" and "Gastronomicheskiy Shtorm") to resolve conflicting "meat"/"fish" tags on top-selling items, as data accuracy directly impacts customer trust, search relevance, and overall order conversion.
* **Seasonal Adaptation and Core Retention:**
  * Direct marketing efforts toward retaining the established "core" user base (loyal, high-AOV buyers at the end of June) through exclusive loyalty programs.
  * Smooth out weekend and summer season dips using targeted ads for suburban recreation areas and introducing family/group combo meals (which will also organically support AOV growth).
* **Technical and Product Funnel Monitoring:**
  * Conduct a detailed technical audit of app logs on critical conversion drop dates (May 28 and June 18) to identify payment processing failures.
  * Design and deploy an automated onboarding and engagement flow for new users (personalized onboarding, Day 1 welcome coupons, and Day 2–3 reminder push notifications) to prevent early churn.