-- PHASE 5: TIME & BEHAVIOR ANALYSIS
-- select * from ecom_raw_data
--  -Orders by hour of day
SELECT 
    HOUR(InvoiceDate) AS order_hours,
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM
    ecom_raw_data
WHERE
    Order_Status = 'Completed'
GROUP BY HOUR(InvoiceDate)
ORDER BY total_orders DESC

-- peak sales days
SELECT 
    InvoiceDate, ROUND(SUM(line_revenue)) AS total_revenue
FROM
    ecom_raw_data
WHERE
    Order_status = 'Completed'
GROUP BY InvoiceDate
ORDER BY total_revenue DESC
LIMIT 10;

