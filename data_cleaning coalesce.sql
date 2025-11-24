/*
CREATE TABLE products(
product_id SERIAL PRIMARY KEY,
c_name VARCHAR(50),
p_name VARCHAR(50),
catogory VARCHAR(50),
price INT,
qty SMALLINT
)

INSERT INTO products(c_name,p_name,catogory,price,qty)
VALUES('Aarav','Mobile Charger','Electronics', NULL, 10),
('Riya','Bluetooth Speaker','Electronics', 1200, NULL),
('Kabir','Notebook','Stationery', NULL, 15),
('Simran','Pen Set','Stationery', 200, 5),
('Zara','Kitchen Knife','Home', NULL, NULL),
('Ayaan','LED Bulb','Electronics', 150, NULL),
('Nisha','Coffee Mug','Home', NULL, 8),
('Arjun','Water Bottle','Home', 90, NULL),
('Meera','USB Cable','Electronics', NULL, 20),
('Dev','Mouse Pad','Electronics', 300, NULL),
('Zain','Scissors','Stationery', NULL, 12),
('Sana','Wall Clock','Home', 1100, NULL),
('Rehan','Ball Pen','Stationery', NULL, 7),
('Fatima','Power Bank','Electronics', 2500, NULL),
('Imran','Table Mat','Home', NULL, 18),
('Aisha','Earphones','Electronics', 175, NULL),
('Ibrahim','Notebook','Stationery', NULL, 9),
('Minal','Plastic Container','Home', 80, NULL),
('Rayyan','Keyboard','Electronics', NULL, NULL),
('Hina','Flower Pot','Home', 220, 3),
('Yusuf','Phone Cover','Electronics', NULL, 11),
('Zoya','Markers','Stationery', 95, NULL),
('Farhan','Paper File','Stationery', NULL, 14),
('Noor','Wall Frame','Home', 1300, NULL),
('Junaid','USB Hub','Electronics', NULL, 6),
('Laiba','Glue Stick','Stationery', 140, NULL),
('Aman','Dish Rack','Home', NULL, 9),
('Heena','Photo Album','Home', 210, NULL),
('Owais','Extension Board','Electronics', NULL, 4),
('Iqra','Hand Towel','Home', 160, NULL),
('Sahil','Laptop Sleeve','Electronics', NULL, 19),
('Maria','Pen Stand','Stationery', 115, NULL),
('Danish','Sticky Notes','Stationery', NULL, 13),
('Shifa','LED Lamp','Home', 260, NULL),
('Faizan','School Bag','Home', NULL, 5),
('Arham','Memory Card','Electronics', 145, NULL),
('Anaya','Diary','Stationery', NULL, NULL),
('Sameer','Desk Organizer','Home', 170, 8),
('Afnan','Trimmer','Electronics', NULL, 7),
('Hoor','Glass Set','Home', 155, NULL),
('Aryan','Hard Disk','Electronics', NULL, 16),
('Mahira','Sketchbook','Stationery', 190, NULL),
('Hamza','Pencil Box','Stationery', NULL, 9),
('Nida','Electric Kettle','Home', 2050, NULL),
('Sufiyan','Smart Watch','Electronics', NULL, 12),
('Tara','USB Fan','Electronics', 175, NULL),
('Aadil','Steel Bottle','Home', NULL, 6),
('Samar','Headphones','Electronics', 2400, NULL),
('Ruhi','Lunch Box','Home', NULL, 10),
('Wasim','Stapler','Stationery', 185, NULL);

SELECT *FROM products
WHERE price IS NULL OR qty IS NULL

SELECT * FROM products
WHERE price IS NOT NULL AND qty IS NOT NULL
*/
SELECT p_name,
COALESCE(price,0),
COALESCE(qty,0),
COALESCE(price*qty,(SELECT ROUND(AVG(price*qty))AS amount FROM products))
FROM products;