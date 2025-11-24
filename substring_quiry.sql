/*
SELECT * FROM products
*/
SELECT
UPPER(TRIM(COALESCE(c_name,'empty'))) AS new_c_name,
SUBSTRING(UPPER(TRIM(COALESCE(catogory,'No Catogory')))FROM 1 FOR 3) AS new_catogery,
catogory,p_name
FROM products


