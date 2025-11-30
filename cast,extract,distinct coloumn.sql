--SELECT * FROM products
/*
ALTER TABLE products
ADD order_dateTime TIMESTAMP DEFAULT NOW()

SELECT p_name,catogory,order_datetime,
EXTRACT(DAY FROM order_datetime) AS DAY,
EXTRACT(MONTH FROM order_datetime) AS MONTH,
ROUND(EXTRACT(SECOND FROM order_datetime)) AS second
FROM products

SELECT DISTINCT catogory,
COUNT(*) AS count_catogory,
ROUND(AVG(price*qty)) AS AVG_amount
FROM products
GROUP BY catogory
*/
SELECT order_datetime,
CAST(ORDER_DATETIME AS DATE) AS newDate,
CAST(ORDER_DATETIME AS TIME) AS newTime,
CAST(PRICE AS DECIMAL(10,2)) AS newprice,
CAST(qty AS VARCHAR(50)) AS qty_string,
CAST(p_name AS VARCHAR(50)) AS newP_name
FROM products