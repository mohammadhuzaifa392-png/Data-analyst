/*
SELECT * FROM products

SELECT pname,qty,amount,
	AVG(amount) OVER(ORDER BY amount) AS avgp
FROM products
*/
SELECT pname,category,amount,
	(AVG(amount) OVER(PARTITION BY category ORDER BY amount) AS avgpd
FROM products