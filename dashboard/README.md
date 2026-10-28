# Video Game Market & Platform Strategy Dashboard

An analytical dashboard built for an indie game development studio to evaluate market trends, identify platform-genre monetization patterns, and de-risk early-stage product planning for their next title.

Note: This is a professional portfolio project based on a public demo dataset.
---

## Business Context & Objectives

An independent game studio is planning its next major title and needs data-driven insights to choose the optimal target genre and platforms to maximize revenue potential while minimizing financial risks. 

### Key Research Questions
* **Market Leaders:** Which platforms and genres historically demonstrate the highest median and cumulative sales?
* **Temporal Trends:** How has genre popularity evolved over time—which genres are trending over the last 5–10 years, and which are declining?
* **Platform Profiling:** Are there dominant genres exclusive or heavily favored on specific platforms (e.g., historical platform preferences)?

---

## Dashboard Architecture & Layout

The dashboard is structured into three main analytical sections:

1. **Overview (KPIs & High-Level Metrics):**
   * Total Market Volume (Cumulative Global Sales)
   * Total Games Published
   * Average Sales per Game
   * Median Sales per Game
2. **Trend Analysis:**
   * Temporal sales dynamics by genre (Line Charts)
   * Historical release volume trends over time
3. **Platform-Genre Matrix:**
   * A normalized heatmap highlighting genre distribution share within each platform, backed by database-level SQL optimization (`PARTITION BY platform`).
   * Interactive breakdown tables for Top Genres by Sales, Game Count, and Top Platforms.

**Interactivity & Controls:**
* **Native Filters:** Global filtering by Year, Genre, and Platform.
* **Cross-Filtering:** Configured across applicable charts to enable seamless drill-down exploration.

---

## Tech Stack & Data Engineering

* **BI Tool:** Apache Superset (hosted via Preset)
* **Data Processing & Storage:** Custom SQL views for advanced aggregations and normalization (handling row-to-column mapping and partition shares to prevent client-side frontend errors).
* **Dataset:** Modified dataset (~16,000 rows), based on platform demo datasets, containing global and regional sales breakdown (`na_sales`, `eu_sales`, `jp_sales`, `other_sales`, `global_sales`), game metadata (`rank`, `name`, `platform`, `year`, `genre`, `publisher`).

---

## Access & Portfolio Note

> **Note on Accessibility:** Due to platform restrictions and security policies on Preset/Apache Superset, public unauthenticated live access is restricted to registered workspace members. 
> 
> * **How to Explore:** A comprehensive visual PDF report containing full dashboard screenshots is attached to this repository.
> * **Live Demo:** I am more than happy to walk through the fully interactive dashboard via a live screen-share during an interview or call.

An analytical key-findings summary and business recommendation report will be published in a separate repository doc.