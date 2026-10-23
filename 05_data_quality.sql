-- E-Commerce Sales Analysis
-- 05: Data Quality Checks

-- Check 1: Missing values
SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END)
        AS missing_customer_id,
    SUM(CASE WHEN Description IS NULL THEN 1 ELSE 0 END)
        AS missing_description
FROM "Online Retail";

-- Check 2: Quantity issues
SELECT
    SUM(CASE WHEN Quantity < 0 THEN 1 ELSE 0 END)
        AS negative_quantity_rows,
    SUM(CASE WHEN Quantity = 0 THEN 1 ELSE 0 END)
        AS zero_quantity_rows,
    SUM(CASE WHEN Quantity > 0 THEN 1 ELSE 0 END)
        AS positive_quantity_rows
FROM "Online Retail";

-- Check 3: Invoice status
SELECT
    COUNT(DISTINCT CASE
        WHEN InvoiceNo LIKE 'C%' THEN InvoiceNo
    END) AS cancelled_invoices,
    COUNT(DISTINCT CASE
        WHEN InvoiceNo NOT LIKE 'C%' THEN InvoiceNo
    END) AS regular_invoices
FROM "Online Retail";
