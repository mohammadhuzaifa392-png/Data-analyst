--SELECT * FROM ecommerce_orders
/*
SELECT city,  SUM(qty) AS total_orders FROM ecommerce_orders
GROUP BY city
ORDER BY SUM(qty) DESC

SELECT catogery,SUM(qty) AS Total_orders FROM ecommerce_orders
GROUP BY catogery
ORDER BY SUM(qty) DESC
LIMIT 5;

SELECT catogery,ROUND(AVG(net_amount),2) AS Total FROM ecommerce_orders
GROUP BY catogery
HAVING AVG(net_amount)>4500
ORDER BY AVG(net_amount) DESC

SELECT city,COUNT(net_amount) AS net_order FROM ecommerce_orders
GROUP BY city
ORDER BY city DESC
*/
SELECT * FROM ecommerce_orders







