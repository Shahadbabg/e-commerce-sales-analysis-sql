-- E-Commerce Sales Analysis
-- 03: Customer Analysis

SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    ROUND(SUM(Quantity * UnitPrice), 2) AS total_spent

FROM "Online Retail"

WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND CustomerID IS NOT NULL

GROUP BY CustomerID

ORDER BY total_spent DESC

LIMIT 10;
