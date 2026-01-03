-- PHASE FOUR - CUSTOMER ANALYSIS

 -TOP 10 CUSTOMERS BY REVENUE 
SELECT 
    CustomerID, ROUND(SUM(Line_revenue), 2) AS amount_spent
FROM
    ecom_raw_data
WHERE
    Order_Status = 'Completed'
        AND CustomerID != 'Unknown'
GROUP BY CustomerID
ORDER BY amount_spent DESC
LIMIT 10;

-- REPEATED CUSTOMERS VS ONE TIME CUSTOMERS
SELECT 
    customer_type, COUNT(*)
FROM
    (SELECT 
        CustomerID,
            CASE
                WHEN COUNT(DISTINCT invoiceNo) <= 1 THEN 'One-Time'
                ELSE 'Repeated'
            END AS customer_type
    FROM
        ecom_raw_data
    WHERE
        order_status = 'Completed'
            AND customerID != 'Unknown'
    GROUP BY CustomerID) t
GROUP BY customer_type
