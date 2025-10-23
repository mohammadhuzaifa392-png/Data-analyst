/*
SELECT * FROM ecommerce_orders

SELECT customer_name,city,product,net_amount FROM ecommerce_orders
WHERE city='Mumbai'

SELECT city, SUM(net_amount) AS Total_amount FROM ecommerce_orders
WHERE city='Mumbai'
GROUP BY city

SELECT customer_name,city,product,net_amount FROM ecommerce_orders
WHERE city='Mumbai' OR city='Pune'

SELECT  city, SUM(net_amount) AS Total_amount FROM ecommerce_orders
WHERE city='Mumbai' OR city='Pune'
GROUP BY city

SELECT customer_name,city,product,net_amount FROM ecommerce_orders
WHERE product LIKE '%Smart%'

SELECT customer_name,city,product,net_amount FROM ecommerce_orders
WHERE product ILIKE 'S%'
*/
SELECT customer_name,city,product,net_amount FROM ecommerce_orders
WHERE product ILIKE '%M%'

