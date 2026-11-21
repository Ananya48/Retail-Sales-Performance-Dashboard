# Retail Sales Performance Dashboard

## Project Overview

The **Retail Sales Performance Dashboard** is an end-to-end data analytics project developed using **SQL Server and Microsoft Power BI**.

The project analyses retail sales data from 2014 to 2017 to identify sales trends, evaluate product and regional profitability, understand customer purchasing behaviour, and generate actionable business insights.

The dashboard provides an interactive business overview through three report pages, allowing users to explore performance using Year, Region, and Category filters.

## Tools & Technologies

- **Microsoft Excel** – Dataset inspection
- **SQL Server 2025 Express** – Data validation, querying, analysis, and view creation
- **SQL Server Management Studio (SSMS)** – SQL development
- **Microsoft Power BI Desktop** – Data modelling, DAX measures, and interactive visualisation
- **DAX** – Calculated columns and analytical measures

## Dataset

- **Dataset:** Sample Superstore
- **Source:** Tableau Sample Superstore dataset
- **Records:** 9,994 rows
- **Columns:** 21
- **Period:** 2014–2017

The dataset contains information about orders, customers, products, sales, discounts, shipping, and profits.

## Project Workflow

1. Imported the Sample Superstore dataset into SQL Server.
2. Performed data validation and checked for missing values, duplicate records, invalid quantities, and date inconsistencies.
3. Used SQL queries to analyse overall performance, products, discounts, regions, customers, and shipping.
4. Created 11 SQL views for reusable analytical queries.
5. Connected SQL Server to Power BI.
6. Built relationships, calculated columns, and DAX measures.
7. Designed a three-page interactive dashboard.
8. Validated KPI results against the SQL analysis.

## Dashboard Pages

### 1. Sales Overview
- Total Sales
- Total Profit
- Total Orders
- Total Customers
- Average Order Value
- Profit Margin
- Monthly sales trends
- Sales by category and region
- Yearly sales performance

### 2. Profitability Analysis
- Profit by product sub-category
- Impact of discount levels on Tables and Bookcases
- Profit margin by product category
- Identification of profitable and loss-making product lines

### 3. Customer Analysis
- Sales by customer segment
- Top 10 customers by sales
- Repeat versus one-time customer sales contribution
- Customer distribution

## Key Business Insights

- Total sales reached approximately **$2.30 million**, with a total recorded profit of **$286.82K**.
- Technology generated the highest sales and profit among the three product categories.
- Furniture had a considerably lower profit margin than Technology and Office Supplies.
- Tables, Bookcases, and Supplies were loss-making sub-categories.
- Tables recorded the largest overall sub-category loss.
- The Central region had the lowest profit margin at approximately **7.92%**.
- Higher discount ranges were associated with lower profitability in Tables and Bookcases.
- The Consumer segment generated the highest sales, while Home Office had the highest profit margin.
- Repeat customers accounted for approximately **99.78% of total sales** during the analysed period.

## Important Analytical Notes

- One missing Profit value was retained as NULL rather than being replaced with an assumed value.
- Negative profit values were retained because they represent genuine business losses.
- Discount analysis identifies associations, not proof that discounts alone caused lower profitability.
- Repeat customer classification is based on the number of distinct orders across the full 2014–2017 period. It is not a formal cohort-based customer retention analysis.

## Project Structure

```text
Retail_Sales_Performance_Dashboard/
│
├── Dataset/
│   └── SampleSuperstore.csv
│
├── SQL_Scripts/
│   └── SQL analysis and view scripts
│
├── PowerBI_Report/
│   └── Retail_Sales_Performance.pbix
│
├── Screenshots/
│   ├── 01_Sales_Overview.png
│   ├── 02_Profitability_Analysis.png
│   └── 03_Customer_Analysis.png
│
├── Documentation/
│
└── README.md
```

## How to Explore the Project

1. Download or clone this repository.
2. Open the SQL scripts using SQL Server Management Studio.
3. Import the provided CSV dataset into a SQL Server database.
4. Execute the SQL scripts to recreate the analytical views.
5. Open the Power BI report using Power BI Desktop.
6. Update the SQL Server connection if necessary.

## Project Outcome

This project demonstrates practical skills in SQL querying, data validation, analytical thinking, data modelling, DAX, and interactive dashboard development.

The objective was to transform raw retail transaction data into meaningful business insights that can support data-driven decision-making.