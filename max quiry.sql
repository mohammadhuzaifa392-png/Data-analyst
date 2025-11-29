SELECT product, MAX(amount),MAX(units) AS sales_amount
FROM sales_data
GROUP BY product;