-- PHASE 2 - SALES & REVENUE ANALYSIS

 -- TOTAL REVENUE ( ORDERS COMPLETED )
SELECT 
    SUM(Line_revenue) AS total_revenue
FROM
    ecom_raw_data
WHERE
    Order_status = 'Completed';
    
    
-- REVENUE BY COUNTRY

SELECT 
    ROUND(SUM(Line_revenue), 2) AS total_revenue, Country
FROM
    ecom_raw_data
WHERE
    Order_status = 'Completed'
GROUP BY Country;


-- MONTHLY REVENUE TREND
SELECT 
    ROUND(SUM(Line_revenue), 2) AS total_revenue,
    InvoiceYear,
    InvoiceMonth
FROM
    ecom_raw_data
WHERE
    Order_status = 'Completed'
GROUP BY InvoiceYear , InvoiceMonth
ORDER BY InvoiceYear , InvoiceMonth;

-- AVG ORDER VALUE

SELECT 
    AVG(total_amount) AS avg_amount
FROM
    (SELECT 
        ROUND(SUM(Line_revenue), 2) AS total_amount, InvoiceNo
    FROM
        ecom_raw_data
    WHERE
        Order_status = 'Completed'
    GROUP BY InvoiceNo) AS avg_table ;

