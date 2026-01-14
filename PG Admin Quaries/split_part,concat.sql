/*
SELECT 
	SPLIT_PART(TRIM(c_name),'',1) AS f_name,
	SPLIT_PART(TRIM(c_name),'',2) AS l_name
FROM products;

*/
SELECT product_id,c_name,catogory,
	CONCAT(' Hello ',TRIM(c_name),' your order for: ',TRIM(p_name),' Amount ',price*qty,' is confirmed: ') AS order_massage
FROM products;


