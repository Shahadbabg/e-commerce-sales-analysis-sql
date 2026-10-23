-- E-Commerce Sales Analysis
-- 04: Country Analysis

SELECT
    Country,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    ROUND(SUM(Quantity * UnitPrice), 2) AS total_revenue

FROM "Online Retail"

WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0

GROUP BY Country

ORDER BY total_revenue DESC

LIMIT 10;
