SELECT region, MIN(unit_price) AS minimum_price
FROM sales_data
GROUP BY region