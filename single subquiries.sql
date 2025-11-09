/*
CREATE TABLE employee(
emp_id SMALLINT PRIMARY KEY,
emp_name VARCHAR(50) NOT NULL,
city VARCHAR(30) NOT NULL,
gender VARCHAR(10) NOT NULL,
salary NUMERIC(10,2) NOT NULL,
post VARCHAR(50) NOT NULL,
dept_id SMALLINT NOT NULL
);
CREATE TABLE department(
dept_id SMALLINT PRIMARY KEY,
dept_name VARCHAR(50) NOT NULL,
manager VARCHAR(50) NOT NULL
);

INSERT INTO department (dept_id, dept_name, manager)
VALUES (1, 'Human Resources', 'Alice Johnson'),
 (2, 'Finance', 'Bob Smith'),
 (3, 'Marketing', 'Carol Davis'),
 (4, 'Sales', 'David Wilson'),
 (5, 'IT', 'Evelyn Brown'),
 (6, 'Customer Support', 'Frank Thompson'),
 (7, 'Research & Development', 'Grace Lee'),
 (8, 'Logistics', 'Henry White'),
 (9, 'Legal', 'Irene Martinez'),
 (10, 'Operations', 'Jack Robinson');

INSERT INTO employee (emp_id, emp_name, city, gender, salary, post, dept_id)
VALUES
(1, 'John Smith', 'New York', 'Male', 55000.00, 'HR Executive', 1),
(2, 'Emily Davis', 'Los Angeles', 'Female', 60000.00, 'HR Manager', 1),
(3, 'Michael Brown', 'Chicago', 'Male', 50000.00, 'HR Assistant', 1),
(4, 'Sarah Wilson', 'Houston', 'Female', 58000.00, 'HR Coordinator', 1),
(5, 'David Johnson', 'Phoenix', 'Male', 62000.00, 'HR Specialist', 1),

(6, 'Laura Martinez', 'Philadelphia', 'Female', 70000.00, 'Finance Analyst', 2),
(7, 'Robert Garcia', 'San Antonio', 'Male', 75000.00, 'Accountant', 2),
(8, 'Sophia Rodriguez', 'San Diego', 'Female', 72000.00, 'Financial Manager', 2),
(9, 'James Hernandez', 'Dallas', 'Male', 68000.00, 'Budget Analyst', 2),
(10, 'Olivia Lee', 'San Jose', 'Female', 71000.00, 'Payroll Specialist', 2),

(11, 'William Gonzalez', 'Austin', 'Male', 65000.00, 'Marketing Executive', 3),
(12, 'Isabella Perez', 'Jacksonville', 'Female', 67000.00, 'Social Media Manager', 3),
(13, 'Alexander Clark', 'Fort Worth', 'Male', 64000.00, 'Marketing Coordinator', 3),
(14, 'Mia Lewis', 'Columbus', 'Female', 69000.00, 'Brand Manager', 3),
(15, 'Ethan Walker', 'San Francisco', 'Male', 71000.00, 'Market Research Analyst', 3),

(16, 'Charlotte Hall', 'Charlotte', 'Female', 62000.00, 'Sales Executive', 4),
(17, 'Daniel Allen', 'Indianapolis', 'Male', 65000.00, 'Sales Manager', 4),
(18, 'Amelia Young', 'Seattle', 'Female', 63000.00, 'Sales Coordinator', 4),
(19, 'Matthew King', 'Denver', 'Male', 67000.00, 'Account Executive', 4),
(20, 'Abigail Wright', 'Washington', 'Female', 69000.00, 'Sales Representative', 4),

(21, 'Joseph Scott', 'Boston', 'Male', 75000.00, 'IT Support', 5),
(22, 'Madison Adams', 'Nashville', 'Female', 80000.00, 'Network Engineer', 5),
(23, 'Christopher Baker', 'Baltimore', 'Male', 77000.00, 'System Administrator', 5),
(24, 'Elizabeth Gonzalez', 'Louisville', 'Female', 79000.00, 'IT Manager', 5),
(25, 'Anthony Nelson', 'Milwaukee', 'Male', 76000.00, 'Software Developer', 5),

(26, 'Sofia Carter', 'Albuquerque', 'Female', 55000.00, 'Customer Support Rep', 6),
(27, 'Jackson Mitchell', 'Tucson', 'Male', 57000.00, 'Support Specialist', 6),
(28, 'Victoria Perez', 'Fresno', 'Female', 56000.00, 'Helpdesk Technician', 6),
(29, 'Benjamin Roberts', 'Sacramento', 'Male', 59000.00, 'Support Coordinator', 6),
(30, 'Ella Turner', 'Kansas City', 'Female', 58000.00, 'Customer Care Lead', 6),

(31, 'Daniel Phillips', 'Long Beach', 'Male', 82000.00, 'R&D Engineer', 7),
(32, 'Grace Campbell', 'Mesa', 'Female', 84000.00, 'Research Scientist', 7),
(33, 'Henry Parker', 'Atlanta', 'Male', 81000.00, 'Innovation Manager', 7),
(34, 'Lily Evans', 'Omaha', 'Female', 83000.00, 'Lab Technician', 7),
(35, 'Samuel Edwards', 'Raleigh', 'Male', 80000.00, 'Product Developer', 7),

(36, 'Chloe Collins', 'Miami', 'Female', 60000.00, 'Logistics Coordinator', 8),
(37, 'Nathan Stewart', 'Oakland', 'Male', 62000.00, 'Warehouse Manager', 8),
(38, 'Hannah Sanchez', 'Minneapolis', 'Female', 61000.00, 'Supply Chain Analyst', 8),
(39, 'Ryan Morris', 'Tulsa', 'Male', 63000.00, 'Operations Supervisor', 8),
(40, 'Lillian Rogers', 'Arlington', 'Female', 64000.00, 'Transport Manager', 8),

(41, 'Jacob Reed', 'New Orleans', 'Male', 78000.00, 'Legal Advisor', 9),
(42, 'Avery Cook', 'Wichita', 'Female', 80000.00, 'Corporate Lawyer', 9),
(43, 'Logan Morgan', 'Bakersfield', 'Male', 79000.00, 'Legal Counsel', 9),
(44, 'Scarlett Bell', 'Aurora', 'Female', 77000.00, 'Compliance Officer', 9),
(45, 'Owen Murphy', 'Anaheim', 'Male', 81000.00, 'Legal Assistant', 9),

(46, 'Liam Bailey', 'Santa Ana', 'Male', 72000.00, 'Operations Manager', 10),
(47, 'Zoe Rivera', 'Riverside', 'Female', 74000.00, 'Operations Executive', 10),
(48, 'Mason Cooper', 'Corpus Christi', 'Male', 71000.00, 'Process Analyst', 10),
(49, 'Aria Richardson', 'Lexington', 'Female', 73000.00, 'Logistics Planner', 10),
(50, 'Evelyn Howard', 'Stockton', 'Female', 75000.00, 'Operations Coordinator', 10);

---SELECT * FROM employee
SELECT emp_name,salary FROM employee
WHERE salary=(SELECT MAX(salary)FROM employee)

SELECT emp_name,salary FROM employee
WHERE salary=(SELECT MIN(salary)FROM employee)

SELECT emp_name,salary FROM employee
WHERE salary>(SELECT AVG(salary)FROM employee)

SELECT emp_name,salary FROM employee
WHERE salary<(SELECT AVG(salary)FROM employee)
*/
SELECT * FROM employee
WHERE gender='Female'
AND salary=(SELECT MAX(salary)FROM employee)





