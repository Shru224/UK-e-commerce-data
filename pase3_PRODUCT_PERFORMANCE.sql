-- PHASE THREE - PRODUCT PERFORMANCE 

SELECT 
    Description, ROUND(SUM(line_revenue), 2) AS product_revenue
FROM
    ecom_raw_data
WHERE
    Order_Status = 'Completed'
GROUP BY Description
ORDER BY product_revenue DESC
LIMIT 10;

-- Top 10 products by quantity sold
SELECT 
    Description, SUM(quantity) AS product_quantity
FROM
    ecom_raw_data
WHERE
    Order_Status = 'Completed'
        AND quantity > 0
GROUP BY Description
ORDER BY product_quantity DESC
LIMIT 10;

select * from ecom_raw_data

-- PRODUCTS WITH HIGH RETURNS ( -VE QUANTITY )
SELECT 
    Description, SUM(ABS(Quantity)) AS return_quantity
FROM
    ecom_raw_data
WHERE
    Quantity < 0
GROUP BY Description
ORDER BY return_quantity DESC
LIMIT 10


