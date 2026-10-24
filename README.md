# E-Commerce Sales Analysis Using SQL

## Project Overview

This project analyzes an online retail dataset using SQL to explore sales performance, product revenue, customer purchasing behavior, country-level sales, and data quality.

The objective is to transform raw transactional data into meaningful business insights using SQL queries and aggregate functions.

## Dataset

- **Source:** [UCI Machine Learning Repository – Online Retail Dataset](https://archive.ics.uci.edu/dataset/352/online+retail)
- **Total Records:** 541,909 rows
- **Time Period:** December 2010 – December 2011
- **Database:** SQLite
- **SQL Tool:** DB Browser for SQLite

## Tools and Skills

- SQL and SQLite
- Data Filtering and Sorting
- Data Aggregation and Grouping
- Aggregate Functions: `SUM()`, `COUNT()`, `AVG()`
- Conditional Logic: `CASE WHEN`
- String Functions: `SUBSTR()` and `INSTR()`
- Data Quality Checks
- Business Insights and KPI Analysis

## Project Files

| File | Description |
|---|---|
| `01_sales_analysis.sql` | Monthly sales, order counts, and average order value |
| `02_product_analysis.sql` | Product quantities, revenue, and average unit prices |
| `03_customer_analysis.sql` | Customer order counts and total spending |
| `04_country_analysis.sql` | Revenue and order counts by country |
| `05_data_quality.sql` | Missing values, quantity checks, and invoice classification |

## Key Findings

### 1. Monthly Sales Analysis

- **November 2011** recorded the highest monthly sales, reaching **1,509,496.33** across **2,884 orders**.
- November also had the highest order count among the months analyzed.
- **December 2011** recorded the highest average order value at **761.37**, despite having only **839 orders**.
- February 2011 recorded the lowest monthly sales among the months in 2011, at **523,631.89**.

### 2. Product Analysis

- **DOTCOM POSTAGE** generated the highest revenue among the top 10 products analyzed, totaling **206,248.77**.
- **PAPER CRAFT, LITTLE BIRDIE** had the highest sales quantity among the top 10 products, with **80,995 units** sold.
- The product generating the highest revenue was not the product sold in the largest quantity, demonstrating the importance of analyzing both revenue and sales volume.

### 3. Customer Analysis

- Customer **14646** ranked first in total spending, with **280,206.02** across **74 invoices**.
- Customer **18102** ranked second, spending **259,657.30** across **60 invoices**.
- Customer **14911** had the highest invoice count among the top 10 customers by spending, with **201 invoices** and total spending of **143,825.06**.
- Customer spending and purchasing frequency varied considerably, highlighting the value of analyzing both metrics.

### 4. Country Analysis

- The **United Kingdom** generated the highest revenue among the countries analyzed, totaling **9,003,097.96** across **18,786 invoices**.
- The Netherlands ranked second, with revenue of **285,446.34** across **95 invoices**.
- EIRE ranked third, generating **283,453.96** across **288 invoices**.
- The United Kingdom accounted for substantially more revenue than the other countries in the top 10.

### 5. Data Quality Checks

The dataset contains **541,909 records**. The quality checks identified the following:

| Check | Result |
|---|---:|
| Missing Customer IDs | 135,080 rows |
| Missing Product Descriptions | 1,454 rows |
| Negative Quantity Rows | 10,624 rows |
| Zero Quantity Rows | 0 rows |
| Positive Quantity Rows | 531,285 rows |
| Distinct Invoices Beginning with `C` | 3,836 |
| Distinct Invoices Not Beginning with `C` | 22,064 |

These checks highlighted missing customer information, missing product descriptions, negative quantities, and invoices potentially associated with cancellations or returns.

## Data Preparation and Filtering

For the monthly, product, customer, and country sales analyses, the following filters were applied:

- Excluded invoices beginning with `C`.
- Excluded rows where `Quantity` was zero or negative.
- Excluded rows with missing `Description` in the product analysis.
- Excluded rows with missing `CustomerID` in the customer analysis.

These filters helped focus the sales analyses on positive-quantity transactions. However, they do not constitute a complete data-cleaning process.

## Limitations

- December 2011 contains partial-month data and should not be compared directly with complete months.
- Revenue was calculated as `Quantity * UnitPrice`. Product costs were not available in the analysis, so profit could not be calculated.
- Invoice numbers beginning with `C` were treated as cancelled invoices for classification purposes; this rule may not capture every return or adjustment.
- Missing customer IDs limit customer-level analysis.
- Product and customer findings are based on the top 10 results returned by the relevant queries.
- The findings depend on the filtering rules applied and should be validated before being used for business decisions.

## Conclusion

This project demonstrates how SQL can be used to analyze transactional retail data, identify sales trends, compare product and customer performance, evaluate country-level revenue, and investigate data quality issues.

It also highlights the importance of choosing appropriate metrics, validating results, and understanding data limitations before drawing business conclusions.

## Author
Shahad Babgi
