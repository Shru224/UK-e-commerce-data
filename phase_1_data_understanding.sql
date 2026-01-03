-- -- Phase 1 - DATA UNDERSTANDING

-- -- Total row count 
select count(*) as row_count from ecom_raw_data

-- -- date range
select max(InvoiceDate) , min(InvoiceDate) from ecom_raw_data 

-- -- COMPLETED AND CANCELLED ORDERED 
SELECT 
    Order_Status, COUNT(Order_Status) AS order_count
FROM
    ecom_raw_data
GROUP BY Order_Status;

-- PRODUCTS WITH HIGH RETURNS ( -VE QUANTITY )
SELECT 
    Description,
    SUM(ABS(quantity)) AS total_returned_quantity
FROM ecom_raw_data
WHERE quantity < 0
GROUP BY Description
ORDER BY total_returned_quantity DESC
LIMIT 10;


