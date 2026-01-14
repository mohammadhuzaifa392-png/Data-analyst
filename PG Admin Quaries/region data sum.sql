SELECT region, SUM(units),SUM(amount) AS region_data
FROM sales_data
GROUP BY region