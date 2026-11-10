# Yandex Afisha: Sales Dynamics & Structural Analysis

An educational data analytics project based on historical transaction data from **Yandex Afisha** (as of November 2024).

---

## Project Overview & Business Context

Heading into November 2024, the product team at Yandex Afisha observed divergent trends across event categories: while ticket sales for certain events surged, others experienced a noticeable decline. With the peak holiday promotional season approaching, the business required data-driven insights to optimize its go-to-market strategy.

**Project Objective:** Conduct an in-depth analysis of user purchasing behavior and sales performance to identify key growth drivers, evaluate seasonal patterns, and compare behavioral nuances between mobile and desktop users.

---

## Tech Stack & Dataset

* **BI Platform:** Yandex DataLens
* **Dataset Volume:** 292,034 unique orders (28 attributes)
* **Timeframe:** July 1, 2024 – October 31, 2024

---

## Dashboard Architecture & Key Features

The dashboard provides an executive overview of core performance indicators, revenue segmentation, and event popularity.

### 1. Filtering & Interactivity
* **Global Controls:** Date range (01/07/2024 – 31/10/2024), Currency (RUB / KZT), Event Category, and Region.
* **Cross-Filtering:** Interactive cross-filtering enabled across visual components (tables and bar charts).

### 2. Executive KPI Cards
* Total Revenue
* Unique Customers Count
* Total Order Volume
* Average Order Value (AOV)

### 3. Dynamics & Breakdown
* **Time Series Charts:** Daily trends for Revenue, Order Volume, and Average Order Value.
* **Tabular Breakdown:** Top 5 Events, Venues, and Regions (accessible via tabbed components).
* **Segment Analysis:** User split by Device Type (Mobile vs. Desktop) and Event Categories.

---

## Repository Structure

.
├── Ya_afisha_dashboard_demo.mp4      # Video demonstration of dashboard functionality and cross-filtering
├── Analytical Memo.md       # Detailed analytical memo with strategic insights & recommendations
└── README.md                # Project documentation