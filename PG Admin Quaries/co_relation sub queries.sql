/*
CREATE TABLE producta(
p_id SERIAL PRIMARY KEY,
p_name VARCHAR NOT NULL,
price FLOAT NOT NULL,
sup_id SMALLINT NOT NULL,
qty SMALLINT,
total_amount FLOAT GENERATED ALWAYS AS (price * qty) STORED
);
CREATE TABLE suppliers(
sup_id SMALLINT PRIMARY KEY,
sup_name VARCHAR NOT NULL
);

INSERT INTO producta (p_name, price, sup_id, qty)
VALUES('Aashirvaad Atta 10kg', 465.00, 1, 50),
('Tata Salt 1kg', 28.00, 2, 200),
('Fortune Sunflower Oil 1L', 155.00, 3, 80),
('Amul Butter 500g', 285.00, 4, 60),
('Parle-G Biscuits 800g', 72.00, 5, 150),
('Britannia Marie Gold 600g', 65.00, 1, 120),
('Red Label Tea 250g', 145.00, 2, 70),
('Tata Sampann Dal 1kg', 125.00, 3, 90),
('Surf Excel 1kg', 210.00, 4, 40),
('Colgate Toothpaste 150g', 65.00, 5, 110),
('Dettol Handwash 200ml', 75.00, 1, 85),
('Lifebuoy Soap 125g', 45.00, 2, 130),
('Maggi Noodles 70g', 16.00, 3, 300),
('Nescafe Classic 100g', 310.00, 4, 25),
('Taj Mahal Tea 250g', 160.00, 5, 60),
('Eveready Battery Pack', 110.00, 1, 45),
('Good Day Cookies 600g', 95.00, 2, 95),
('Pepsi 2L Bottle', 95.00, 3, 40),
('Sprite 1.25L', 70.00, 4, 55),
('Kissan Jam 700g', 165.00, 5, 65),
('Bournvita 500g', 275.00, 1, 50),
('Complan Chocolate 500g', 310.00, 2, 30),
('Boost 500g', 290.00, 3, 35),
('Bru Coffee 200g', 230.00, 4, 25),
('Mother Dairy Milk 1L', 62.00, 5, 120),
('Horlicks 500g', 280.00, 1, 40),
('Tata Tea Gold 500g', 245.00, 2, 55),
('Vim Dishwash Bar 200g', 25.00, 3, 160),
('Close-Up Toothpaste 150g', 68.00, 4, 70),
('Clinic Plus Shampoo 340ml', 185.00, 5, 45),
('Dove Soap 125g', 72.00, 1, 100),
('Pears Soap 125g', 85.00, 2, 90),
('Himalaya Face Wash 150ml', 145.00, 3, 60),
('Sunsilk Shampoo 340ml', 195.00, 4, 75),
('Head & Shoulders 340ml', 210.00, 5, 65),
('Lakme Face Cream 50g', 250.00, 1, 40),
('Vicco Turmeric Cream 70g', 185.00, 2, 50),
('Patanjali Aloe Vera Gel 150ml', 95.00, 3, 80),
('Good Knight Refill Pack', 120.00, 4, 100),
('All Out Refill Pack', 118.00, 5, 100),
('Surf Excel Matic 2kg', 410.00, 1, 35),
('Comfort Fabric Conditioner 1L', 195.00, 2, 55),
('Domex Toilet Cleaner 750ml', 165.00, 3, 45),
('Lizol Floor Cleaner 1L', 190.00, 4, 60),
('Rin Detergent Bar 250g', 30.00, 5, 120),
('Nestle Milkmaid 400g', 155.00, 1, 50),
('Britannia Cake 120g', 40.00, 2, 140),
('Lays Chips 90g', 55.00, 3, 130),
('Kurkure Masala Munch 90g', 45.00, 4, 150),
('Haldiram Soan Papdi 500g', 165.00, 5, 70);

INSERT INTO suppliers(sup_id,sup_name)
VALUES(1, 'Hindustan Distributors'),
(2, 'Tata Consumer Supply Co.'),
(3, 'Fortune Wholesale Traders'),
(4, 'Amul Retail Suppliers'),
(5, 'Patanjali Distribution Pvt Ltd');

SELECT sup_name,
(SELECT COUNT(total_amount)
FROM producta p
WHERE p.sup_id=s.sup_id)AS sub_count
FROM suppliers s ;

SELECT sup_name,
(SELECT SUM(total_amount)
FROM producta p
WHERE p.sup_id=s.sup_id)AS sub_count
FROM suppliers s ;
*/
SELECT sup_name,
(SELECT AVG(total_amount)
FROM producta p
WHERE p.sup_id=s.sup_id)AS sub_count
FROM suppliers s ;