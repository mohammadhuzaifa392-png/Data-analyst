/*
SELECT * FROM ecommerce_orders
WHERE net_amount>4500 AND catogery='Electronics'
ORDER BY net_amount DESC
LIMIT 6

--SELECT * FROM ecommerce_orders
--WHERE order_date>='2025-11-01' AND order_date<='2025-11-20'
WHERE order_date BETWEEN '2025-11-01' AND '2025-11-20'
ORDER BY net_amount DESC
LIMIT

SELECT * FROM ecommerce_orders
WHERE city='Mumbai'

SELECT city,SUM(net_amount) AS Total FROM ecommerce_orders
GROUP BY city
ORDER BY Total DESC
LIMIT 1
*/
SELECT * FROM ecommerce_orders




