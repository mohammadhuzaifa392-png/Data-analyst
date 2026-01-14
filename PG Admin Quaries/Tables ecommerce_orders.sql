/*
CREATE TABLE ecommerce_orders(
order_id SERIAL PRIMARY KEY,
customer_name VARCHAR(50) NOT NULL,
email VARCHAR(100),
city VARCHAR(40),
product VARCHAR(60) NOT NULL,
catogery VARCHAR(30),
qty SMALLINT CHECK (qty>0),
unit_price NUMERIC(10,2) CHECK (unit_price>=0),
amount NUMERIC(10,2)GENERATED ALWAYS AS (qty*unit_price)STORED,
discount_pct NUMERIC (5,2)DEFAULT 0 CHECK (discount_pct>=0 AND discount_pct<=100),
Net_amount NUMERIC (10,2)GENERATED ALWAYS AS (qty*unit_price-(qty*unit_price*discount_pct/100)),
order_date DATE NOT NULL,
delivered BOOLEAN DEFAULT FALSE
);

INSERT INTO ecommerce_orders(customer_name,email,city,product,catogery,qty,unit_price,discount_pct,order_date,delivered)
VALUES
('Aarav Sharma', 'aarav.sharma@email.com', 'Mumbai', 'Laptop', 'Electronics', 1, 65000.00, 5, '2025-10-01', TRUE),
('Isha Patel', 'isha.patel@email.com', 'Delhi', 'Headphones', 'Electronics', 2, 2500.00, 10, '2025-10-02', TRUE),
('Ravi Mehta', 'ravi.mehta@email.com', 'Ahmedabad', 'Bluetooth Speaker', 'Electronics', 1, 3500.00, 0, '2025-10-03', FALSE),
('Neha Gupta', 'neha.gupta@email.com', 'Bengaluru', 'Office Chair', 'Furniture', 1, 7000.00, 15, '2025-10-04', TRUE),
('Karan Verma', 'karan.verma@email.com', 'Pune', 'Smartphone', 'Electronics', 1, 45000.00, 10, '2025-10-05', FALSE),
('Simran Kaur', 'simran.kaur@email.com', 'Chandigarh', 'Table Lamp', 'Home Decor', 3, 1200.00, 5, '2025-10-06', TRUE),
('Aditya Joshi', 'aditya.joshi@email.com', 'Hyderabad', 'Keyboard', 'Computer Accessories', 2, 1800.00, 0, '2025-10-07', TRUE),
('Sneha Reddy', 'sneha.reddy@email.com', 'Chennai', 'Mouse', 'Computer Accessories', 1, 800.00, 0, '2025-10-08', TRUE),
('Rahul Nair', 'rahul.nair@email.com', 'Kochi', 'Monitor', 'Electronics', 1, 12000.00, 8, '2025-10-09', TRUE),
('Anjali Das', 'anjali.das@email.com', 'Kolkata', 'Power Bank', 'Electronics', 2, 1500.00, 5, '2025-10-10', FALSE),
('Pooja Singh', 'pooja.singh@email.com', 'Lucknow', 'Air Fryer', 'Appliances', 1, 9500.00, 12, '2025-10-11', TRUE),
('Mohit Bansal', 'mohit.bansal@email.com', 'Jaipur', 'Ceiling Fan', 'Appliances', 2, 3200.00, 5, '2025-10-12', FALSE),
('Tanya Kapoor', 'tanya.kapoor@email.com', 'Noida', 'Microwave Oven', 'Appliances', 1, 10500.00, 10, '2025-10-13', TRUE),
('Arjun Yadav', 'arjun.yadav@email.com', 'Gurgaon', 'Coffee Maker', 'Appliances', 1, 4500.00, 15, '2025-10-14', TRUE),
('Meena Rao', 'meena.rao@email.com', 'Surat', 'Vacuum Cleaner', 'Home', 1, 7000.00, 7, '2025-10-15', FALSE),
('Deepak Soni', 'deepak.soni@email.com', 'Bhopal', 'Iron Box', 'Appliances', 1, 2500.00, 0, '2025-10-16', TRUE),
('Kavita Jain', 'kavita.jain@email.com', 'Indore', 'Curtains', 'Home Decor', 2, 1800.00, 5, '2025-10-17', TRUE),
('Sahil Khan', 'sahil.khan@email.com', 'Nagpur', 'Bed Sheet', 'Home Decor', 3, 1200.00, 10, '2025-10-18', TRUE),
('Ritu Malhotra', 'ritu.malhotra@email.com', 'Patna', 'Mixer Grinder', 'Appliances', 1, 4000.00, 8, '2025-10-19', FALSE),
('Manish Tiwari', 'manish.tiwari@email.com', 'Varanasi', 'Wall Clock', 'Home Decor', 2, 950.00, 0, '2025-10-20', TRUE),
('Anita Desai', 'anita.desai@email.com', 'Rajkot', 'Rice Cooker', 'Appliances', 1, 3200.00, 10, '2025-10-21', TRUE),
('Rohit Singh', 'rohit.singh@email.com', 'Kanpur', 'Toaster', 'Appliances', 1, 1800.00, 5, '2025-10-22', TRUE),
('Priya Ghosh', 'priya.ghosh@email.com', 'Howrah', 'Hair Dryer', 'Personal Care', 1, 1500.00, 10, '2025-10-23', FALSE),
('Dev Sharma', 'dev.sharma@email.com', 'Dehradun', 'LED Bulb Pack', 'Home', 4, 200.00, 0, '2025-10-24', TRUE),
('Vikram Chauhan', 'vikram.chauhan@email.com', 'Amritsar', 'Study Table', 'Furniture', 1, 8500.00, 7, '2025-10-25', TRUE),
('Sonali Agarwal', 'sonali.agarwal@email.com', 'Agra', 'Bookshelf', 'Furniture', 1, 6200.00, 5, '2025-10-26', TRUE),
('Rajesh Kumar', 'rajesh.kumar@email.com', 'Ranchi', 'Dinner Set', 'Kitchenware', 1, 3800.00, 0, '2025-10-27', FALSE),
('Divya Thakur', 'divya.thakur@email.com', 'Shimla', 'Pressure Cooker', 'Kitchenware', 1, 2900.00, 5, '2025-10-28', TRUE),
('Harshit Jain', 'harshit.jain@email.com', 'Udaipur', 'Kettle', 'Appliances', 1, 2300.00, 10, '2025-10-29', TRUE),
('Nisha Bhat', 'nisha.bhat@email.com', 'Srinagar', 'Blanket', 'Home Decor', 2, 2400.00, 15, '2025-10-30', FALSE),
('Anil Sharma', 'anil.sharma@email.com', 'Bhubaneswar', 'Water Bottle', 'Accessories', 3, 400.00, 0, '2025-10-31', TRUE),
('Shreya Pandey', 'shreya.pandey@email.com', 'Jabalpur', 'Table Fan', 'Appliances', 1, 2500.00, 5, '2025-11-01', TRUE),
('Gaurav Mishra', 'gaurav.mishra@email.com', 'Gaya', 'Cookware Set', 'Kitchenware', 1, 5600.00, 8, '2025-11-02', TRUE),
('Tanu Rawat', 'tanu.rawat@email.com', 'Meerut', 'Yoga Mat', 'Fitness', 2, 700.00, 5, '2025-11-03', FALSE),
('Ramesh Patel', 'ramesh.patel@email.com', 'Vadodara', 'Treadmill', 'Fitness', 1, 45000.00, 10, '2025-11-04', TRUE),
('Aisha Qureshi', 'aisha.qureshi@email.com', 'Coimbatore', 'Washing Machine', 'Appliances', 1, 28000.00, 12, '2025-11-05', FALSE),
('Yash Raj', 'yash.raj@email.com', 'Nashik', 'Smartwatch', 'Electronics', 1, 8500.00, 8, '2025-11-06', TRUE),
('Rohini Iyer', 'rohini.iyer@email.com', 'Madurai', 'Camera', 'Electronics', 1, 42000.00, 5, '2025-11-07', TRUE),
('Nitin Chauhan', 'nitin.chauhan@email.com', 'Ludhiana', 'Tripod', 'Accessories', 1, 1800.00, 0, '2025-11-08', TRUE),
('Poonam Naik', 'poonam.naik@email.com', 'Goa', 'Sunscreen', 'Personal Care', 3, 550.00, 10, '2025-11-09', TRUE),
('Tarun Kapoor', 'tarun.kapoor@email.com', 'Delhi', 'Running Shoes', 'Footwear', 1, 3200.00, 15, '2025-11-10', FALSE),
('Geeta Rani', 'geeta.rani@email.com', 'Chennai', 'Sneakers', 'Footwear', 1, 2800.00, 10, '2025-11-11', TRUE),
('Ajay Rao', 'ajay.rao@email.com', 'Pune', 'Shampoo', 'Personal Care', 2, 400.00, 0, '2025-11-12', TRUE),
('Sandeep Kaur', 'sandeep.kaur@email.com', 'Amritsar', 'Perfume', 'Personal Care', 1, 2500.00, 5, '2025-11-13', TRUE),
('Farhan Ali', 'farhan.ali@email.com', 'Hyderabad', 'Smart TV', 'Electronics', 1, 58000.00, 10, '2025-11-14', FALSE),
('Neelam Pandey', 'neelam.pandey@email.com', 'Bengaluru', 'Desk Organizer', 'Office', 2, 1200.00, 0, '2025-11-15', TRUE),
('Rakesh Yadav', 'rakesh.yadav@email.com', 'Varanasi', 'Calculator', 'Office', 1, 900.00, 5, '2025-11-16', TRUE),
('Sunita Pillai', 'sunita.pillai@email.com', 'Kochi', 'Desk Lamp', 'Office', 1, 1600.00, 5, '2025-11-17', TRUE),
('Vivek Deshmukh', 'vivek.deshmukh@email.com', 'Nagpur', 'Printer', 'Office', 1, 9500.00, 8, '2025-11-18', TRUE),
('Reema Sharma', 'reema.sharma@email.com', 'Mumbai', 'Router', 'Electronics', 1, 2800.00, 5, '2025-11-19', TRUE),
('Kunal Joshi', 'kunal.joshi@email.com', 'Pune', 'Charger', 'Electronics', 1, 900.00, 0, '2025-11-20', TRUE);

SELECT * FROM ecommerce_orders

SELECT * FROM ecommerce_orders
WHERE city='Mumbai'

SELECT * FROM ecommerce_orders
WHERE city IN('Mumbai','Pune')

SELECT * FROM ecommerce_orders
WHERE Product=('Smartphone')
*/




