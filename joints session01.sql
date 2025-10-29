-- inner joints
/*
CREATE TABLE Product1(
pid SERIAL PRIMARY KEY,
pname varchar(50) NOT NULL,
p_price NUMERIC (10,2) NOT NULL
);
*/
/*
INSERT INTO Product1(pname,p_price)
VALUES('MOUSE',250.00),
('LAPTOP',8500.00),
('PRINTER',9000.00),
('KEYBOARD',540.00),
('CAMERA',630.00)
*/
/*
SELECT * FROM Product1
*/
/*
CREATE TABLE Order1(
oid SERIAL PRIMARY KEY,
c_name VARCHAR(50) NOT NULL,
city VARCHAR(30) NOT NULL,
pid INTEGER 
);
*/
/*
INSERT INTO order1 (c_name, city, pid)
VALUES('Mariya Dsouza', 'Mumbai', 1),
('Ravi Kumar', 'Delhi', 2),
('Aisha Sheikh', 'Chennai', 3),
('John Mathew', 'Kolkata', 4),
('Sneha Nair', 'Bangalore', 5),
('Arjun Mehta', 'Pune', 1),
('Priya Singh', 'Hyderabad', 2),
('Rahul Sharma', 'Ahmedabad', 3),
('Neha Verma', 'Jaipur', 4),
('Vikram Das', 'Surat', 5),
('Karan Patel', 'Lucknow', 1),
('Divya Iyer', 'Indore', 2),
('Farhan Ali', 'Patna', 3),
('Simran Kaur', 'Bhopal', 4),
('Rohit Gupta', 'Nagpur', 5),
('Meena George', 'Vadodara', 1),
('Deepak Rao', 'Chandigarh', 2),
('Lina Fernandes', 'Guwahati', 3),
('Anil Yadav', 'Noida', 4),
('Kavya Menon', 'Mysore',3)
*/
/*
SELECT * FROM order1
*/
SELECT * FROM Product1
INNER JOIN order1
ON Product1.pid=order1.pid;


