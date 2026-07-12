# Restaurant Performance & Customer Behavior Analysis (SQL)

## 📌 Project Overview
This project executes a comprehensive retrospective analysis of a restaurant's operational and sales data. Utilizing a production-ready dataset consisting of two primary tables (`menu_items` and `order_details`), the objective is to evaluate menu performance, analyze order patterns, and perform multi-table joins to decode customer purchasing behavior. The insights generated aim to assist management in optimizing menu offerings and improving business efficiency.

## 📂 Repository Structure
- `data/`: Contains the datasets used for the analysis (`menu_items.csv`, `order_details.csv`).
- `sql_queries/`:
  - `1_menu_analysis.sql`: Queries exploring the variety, pricing, and categorization of the menu.
  - `2_order_analysis.sql`: Queries evaluating order volumes, date-time trends, and traffic patterns.
  - `3_customer_behavior.sql`: Advanced queries combining both datasets to analyze spending habits and item preferences.

## 📊 Analytical Deep Dive

### 🔹 Phase 1: Menu Items Analysis
Explored the restaurant's offerings to understand the price structure and product mix. Key metrics investigated include:
- Total number of items on the menu and category distributions.
- Identification of the least and most expensive items.
- Average pricing across different cuisine types or categories.

### 🔹 Phase 2: Order Details Analysis
Analyzed transactional data to understand the volume and timeline of restaurant traffic. Key areas explored include:
- Total unique orders and the date range covered by the dataset.
- Identifying peak days and timeframes with the highest order concentration.
- Evaluating the distribution of items per order (e.g., identifying orders with the highest number of items).

### 🔹 Phase 3: Customer Behavior & Product Affinity (JOINs)
Combined the `menu_items` and `order_details` tables using SQL `JOIN` operations to uncover the relationship between what customers order and financial performance:
- **Top Performers:** Identified the most ordered items and their corresponding categories.
- **Revenue Drivers:** Discovered which dishes generated the highest total revenue for the restaurant.
- **Customer Preferences:** Profiled transaction types to see which cuisines or categories are highly favored during specific peak periods.

## 🛠️ Technical Competencies Demonstrated
- **Data Aggregation & Filtering:** Utilizing `GROUP BY`, `ORDER BY`, `HAVING`, and aggregate functions (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`).
- **Relational Data Joins:** Merging disparate datasets via `LEFT JOIN` to establish behavioral contexts.
- **Date & Time Manipulation:** Extracting and parsing temporal data to isolate seasonal or daily operational trends.
