/*
SELECT * FROM product


SELECT * FROM
	(SELECT prodname,price,
		RANK() OVER(ORDER BY price) AS Rbank
			FROM product)
WHERE price<1000

SELECT * FROM
	(SELECT prodname,catogery,price,
		DENSE_RANK() OVER(PARTITION BY catogery  ORDER BY price) AS Drank
			FROM product)
WHERE Drank<=15

SELECT * FROM
	(SELECT prodname,catogery,price,
		DENSE_RANK() OVER(ORDER BY catogery) AS Drank
			FROM product)
WHERE Drank<=15
*/