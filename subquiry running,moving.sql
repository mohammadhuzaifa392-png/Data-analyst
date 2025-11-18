/*
CREATE TABLE products
(
pid SERIAL PRIMARY KEY,
pname VARCHAR(50),
category VARCHAR(50),
price FLOAT,
qty INT,
amount FLOAT GENERATED ALWAYS AS (price*qty) STORED
);

INSERT INTO products (pname, category, price, qty)
VALUES('Apple iPhone 14', 'Electronics', 67999, 15),
('Samsung Galaxy M34', 'Electronics', 16999, 40),
('Dell Inspiron 3511', 'Computers', 52990, 10),
('HP Pavilion 14', 'Computers', 59999, 12),
('Sony WH-1000XM5', 'Audio', 29490, 25),
('boAt Airdopes 121v2', 'Audio', 1299, 60),
('Lenovo Tab M10', 'Tablets', 17999, 20),
('Xiaomi Pad 6', 'Tablets', 26999, 18),
('Logitech MX Master 3S', 'Accessories', 8995, 30),
('Redgear Gaming Mouse', 'Accessories', 899, 50),
('Nike Air Max', 'Footwear', 9999, 22),
('Adidas Running Shoes', 'Footwear', 6499, 33),
('Puma Sneakers', 'Footwear', 5499, 29),
('Bata Formal Shoes', 'Footwear', 2499, 40),
('Campus Sports Shoes', 'Footwear', 1899, 55),
('Levi’s Jeans 511', 'Clothing', 3299, 45),
('Jack & Jones Shirt', 'Clothing', 1999, 30),
('U.S. Polo T-Shirt', 'Clothing', 1499, 60),
('Max Women Kurti', 'Clothing', 899, 70),
('Raymond Formal Shirt', 'Clothing', 2499, 35),
('Tata Tea Gold 1kg', 'Grocery', 499, 120),
('Aashirvaad Atta 10kg', 'Grocery', 449, 90),
('Fortune Sunflower Oil 5L', 'Grocery', 699, 80),
('Maggi 12-Pack', 'Grocery', 132, 150),
('Nescafe Classic 200g', 'Grocery', 340, 100),
('Colgate Advanced 200g', 'Personal Care', 195, 200),
('Dove Shampoo 650ml', 'Personal Care', 499, 90),
('Nivea Men Creme 150ml', 'Personal Care', 260, 110),
('Himalaya Face Wash 150ml', 'Personal Care', 180, 130),
('Clinic Plus Shampoo 340ml', 'Personal Care', 205, 140),
('Lifebuoy Handwash 750ml', 'Household', 139, 160),
('Vim Dishwash Gel 1L', 'Household', 199, 150),
('Surf Excel 3kg', 'Household', 399, 100),
('Harpic Toilet Cleaner 1L', 'Household', 170, 120),
('Airwick Room Freshener', 'Household', 149, 125),
('Philips LED Bulb 12W', 'Home Appliances', 149, 200),
('Usha Table Fan', 'Home Appliances', 2499, 35),
('Bajaj Electric Kettle', 'Home Appliances', 1199, 45),
('Prestige Mixer Grinder', 'Home Appliances', 3999, 28),
('Havells Iron Press', 'Home Appliances', 999, 50),
('Woodland Leather Belt', 'Accessories', 1799, 40),
('Fastrack Watch', 'Accessories', 2299, 33),
('Wildcraft Backpack', 'Accessories', 1999, 37),
('American Tourister Luggage', 'Accessories', 4599, 22),
('Titan Wallet', 'Accessories', 1499, 45),
('Classmate Notebook', 'Stationery', 55, 300),
('Camlin Pen Pack', 'Stationery', 50, 250),
('JK Copier Paper (500 sheets)', 'Stationery', 340, 150),
('Faber-Castell Highlighter Set', 'Stationery', 160, 120),
('Kangaro Stapler', 'Stationery', 95, 180);

SELECT * FROM products


SELECT pname,category,
	ROW_NUMBER() OVER(PARTITION BY category ORDER BY pname) AS rownum
FROM products;


-- ROW_NUM DISPLAY unqique ranking evern thorught the valeus are repeated

SELECT pname,qty,
	ROW_NUMBER() OVER(ORDER BY qty) AS rownum
FROM products;


--RANK give Same rank to equal values and skips the next adjacent rank(s)
-- display all items haveing rank 12

SELECT *
FROM 
	(SELECT pname,price,
		RANK() OVER(ORDER BY price) AS rownum
	FROM products
	)AS t
WHERE rownum=12;

	SELECT pid,pname,category,price,amount,
	 	SUM(amount) OVER(PARTITION BY category ORDER BY price) AS total_amount
	 		FROM products