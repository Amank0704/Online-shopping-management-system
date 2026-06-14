-- ORDERS TABLE–Based 
-- 21. Display all orders placed by customer 'C02'.
SELECT * FROM orders
WHERE cust_id = 'C02';

-- 22. Count total number of orders. 
SELECT COUNT(*) AS Total_Orders 
FROM orders;


-- 23. Find orders placed before August. 
SELECT * FROM orders
WHERE MONTH(order_date) < 8;

-- 24. Display order_id and order_date of all orders.
SELECT order_id, order_date
FROM orders;
-- 25. Change the total amount of order 'O05' to 12000.
UPDATE orders
SET total_amount = 12000
WHERE order_id = 'O05';

-- verify
SELECT *
FROM orders
WHERE order_id = 'O05';