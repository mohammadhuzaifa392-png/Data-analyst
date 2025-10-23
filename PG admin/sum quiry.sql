SELECT product, ROUND(AVG(units),2) AS average_unit_price
FROM sales_data
GROUP BY product