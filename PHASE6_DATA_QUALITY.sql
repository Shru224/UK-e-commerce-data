-- PHASE 6: DATA QUALITY & HEALTH

SELECT 
    ROUND(COALESCE(SUM(CASE
                        WHEN CustomerID = 'Unknown' THEN line_revenue
                        ELSE 0
                    END),
                    0) * 100.0 / SUM(line_revenue),
            2) AS unknown_customer_revenue_pct
FROM
    ecom_raw_data
WHERE
    Order_Status = 'Completed';

-- -  RUNNING TOTAL OF REVENUE   ( USING WINDOW FUNCTION)
SELECT 
    InvoiceDate,
    ROUND(SUM(line_revenue), 2) AS daily_revenue,
    ROUND(
        SUM(SUM(line_revenue)) OVER (
            ORDER BY InvoiceDate
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ),
        2
    ) AS running_total_revenue
FROM ecom_raw_data
WHERE Order_Status = 'Completed'
GROUP BY InvoiceDate
ORDER BY InvoiceDate;




