/*
SELECT order_datetime,
order_datetime ::DATE order_date,
(order_datetime::DATE)::VARCHAR(50) AS new_order_date
FROM products

SELECT order_datetime,
order_datetime::DATE AS order_date,
order_datetime::TIME AS order_time
FROM products

SELECT price,
price::VARCHAR(6) AS price_str
FROM products

SELECT catogory
FROM products
*/
SELECT order_datetime,
TO_DATE(order_datetime::VARCHAR(20),'YYYY-MM-DD') AS new_date
FROM products
