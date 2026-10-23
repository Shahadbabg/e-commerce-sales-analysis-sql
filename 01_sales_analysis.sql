-- E-Commerce Sales Analysis
-- 01: Monthly Sales Analysis
-- Excludes cancellation invoices and negative quantities.

SELECT
    substr(
        InvoiceDate,
        instr(InvoiceDate, '/') +
        instr(
            substr(InvoiceDate, instr(InvoiceDate, '/') + 1),
            '/'
        ) + 1,
        4
    ) AS year,

    substr(
        InvoiceDate,
        1,
        instr(InvoiceDate, '/') - 1
    ) AS month,

    ROUND(SUM(Quantity * UnitPrice), 2) AS total_sales,

    COUNT(DISTINCT InvoiceNo) AS total_orders,

    ROUND(
        SUM(Quantity * UnitPrice) * 1.0
        / COUNT(DISTINCT InvoiceNo),
        2
    ) AS avg_order_value

FROM "Online Retail"

WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0

GROUP BY year, month

ORDER BY year, CAST(month AS INTEGER);
