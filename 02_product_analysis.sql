-- E-Commerce Sales Analysis
-- 02: Product Analysis
-- Excludes cancellation invoices and negative quantities.

SELECT
    Description,
    SUM(Quantity) AS total_quantity,
    ROUND(SUM(Quantity * UnitPrice), 2) AS total_revenue,
    ROUND(AVG(UnitPrice), 2) AS avg_unit_price

FROM "Online Retail"

WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND Description IS NOT NULL

GROUP BY Description

ORDER BY total_revenue DESC

LIMIT 10;

