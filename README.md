# E-Commerce Sales Analysis Using SQL

## Project Overview
This project analyzes an online retail dataset using SQL to explore sales performance, product revenue, customer purchasing behavior, country-level sales, and data quality.

The goal is to extract useful business insights and practice SQL skills through a practical data analysis project.

## Dataset
- **Source:** UCI Machine Learning Repository – Online Retail Dataset
- **Total Records:** 541,909 rows
- **Time Period:** December 2010 – December 2011
- **Database:** SQLite
- **SQL Tool:** DB Browser for SQLite

## Tools and Skills
- SQL
- SQLite
- Data Aggregation
- Filtering and Sorting
- GROUP BY and HAVING
- Aggregate Functions: SUM, COUNT, AVG
- CASE WHEN
- Data Quality Checks

## Project Files
- `01_sales_analysis.sql` – Monthly sales, order counts, and average order value.
- `02_product_analysis.sql` – Product quantities, revenue, and average unit prices.
- `03_customer_analysis.sql` – Customer orders and spending.
- `04_country_analysis.sql` – Revenue and order counts by country.
- `05_data_quality.sql` – Missing values, quantity checks, and invoice classification.

## Key Findings
- The United Kingdom generated the highest revenue among the countries analyzed.
- November 2011 recorded the highest monthly sales in the initial monthly analysis.
- PAPER CRAFT, LITTLE BIRDIE had the highest sales quantity among the leading products analyzed.
- Customer spending varied considerably, with some customers generating high revenue from relatively few orders.
- The dataset contains missing customer IDs, missing product descriptions, negative quantities, and invoices marked with a `C` prefix.

## Data Quality Notes
The dataset was reviewed for missing values, negative quantities, and invoice numbers beginning with `C`.

For the filtered sales and product analyses, invoices beginning with `C` and rows with non-positive quantities were excluded. These are preliminary filtering rules and do not guarantee that all cancellations, returns, or duplicate records have been fully resolved.

December 2011 contains only partial-month data and should not be compared directly with complete months.

## Limitations
The findings depend on the filtering rules used in each query. Further validation and cleaning may be needed before treating the results as final business figures.

## Author
Shahad Babgi