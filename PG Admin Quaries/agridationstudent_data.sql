/*
CREATE TABLE student_data(
roll SERIAL PRIMARY KEY,
stname VARCHAR(30) NOT NULL,
division SMALLINT NOT NULL,
city VARCHAR(30) NOT NULL,
gender CHAR(2) NOT NULL,
marks NUMERIC(5,2) NOT NULL
);

INSERT INTO student_data (stname, division, city, gender, marks) VALUES
('Alice Johnson', 1, 'New York', 'F', 88),
('Bob Smith', 2, 'Los Angeles', 'M', 73),
('Charlie Brown', 3, 'Chicago', 'M', 91),
('Diana Moore', 1, 'Houston', 'F', 85),
('Ethan Wilson', 2, 'Phoenix', 'M', 77),
('Fiona Davis', 3, 'Philadelphia', 'F', 94),
('George Miller', 1, 'San Antonio', 'M', 79),
('Hannah Taylor', 2, 'San Diego', 'F', 86),
('Isaac Anderson', 3, 'Dallas', 'M', 90),
('Jenna Thomas', 1, 'San Jose', 'F', 83),
('Kyle Jackson', 2, 'Austin', 'M', 74),
('Laura White', 3, 'Jacksonville', 'F', 92),
('Michael Harris', 1, 'Fort Worth', 'M', 76),
('Nina Martin', 2, 'Columbus', 'F', 89),
('Owen Thompson', 3, 'Charlotte', 'M', 80),
('Paula Garcia', 1, 'Seattle', 'F', 91),
('Quinn Martinez', 2, 'Denver', 'M', 84),
('Rachel Robinson', 3, 'Washington', 'F', 93),
('Sam Clark', 1, 'Boston', 'M', 82),
('Tina Rodriguez', 2, 'El Paso', 'F', 87),
('Umar Lewis', 3, 'New York', 'M', 75),
('Vera Hall', 1, 'Los Angeles', 'F', 86),
('Will Allen', 2, 'Chicago', 'M', 78),
('Xena Young', 3, 'Houston', 'F', 90),
('Yusuf King', 1, 'Phoenix', 'M', 79),
('Zara Scott', 2, 'Philadelphia', 'F', 88),
('Aaron Adams', 3, 'San Antonio', 'M', 82),
('Bella Baker', 1, 'San Diego', 'F', 89),
('Caleb Gonzalez', 2, 'Dallas', 'M', 73),
('Daisy Nelson', 3, 'San Jose', 'F', 91),
('Eli Carter', 1, 'Austin', 'M', 76),
('Faith Mitchell', 2, 'Jacksonville', 'F', 92),
('Gavin Perez', 3, 'Fort Worth', 'M', 81),
('Hazel Roberts', 1, 'Columbus', 'F', 90),
('Ian Turner', 2, 'Charlotte', 'M', 75),
('Jade Phillips', 3, 'Seattle', 'F', 86),
('Kevin Campbell', 1, 'Denver', 'M', 87),
('Lily Parker', 2, 'Washington', 'F', 93),
('Mason Evans', 3, 'Boston', 'M', 84),
('Nora Edwards', 1, 'El Paso', 'F', 88),
('Oscar Collins', 2, 'New York', 'M', 72),
('Penny Stewart', 3, 'Los Angeles', 'F', 85),
('Quincy Sanchez', 1, 'Chicago', 'M', 77),
('Ruby Morris', 2, 'Houston', 'F', 91),
('Sean Rogers', 3, 'Phoenix', 'M', 80),
('Tara Reed', 1, 'Philadelphia', 'F', 89),
('Ulysses Cook', 2, 'San Antonio', 'M', 74),
('Vanessa Bell', 3, 'San Diego', 'F', 93),
('Walter Murphy', 1, 'Dallas', 'M', 78),
('Ximena Price', 2, 'San Jose', 'F', 87);

SELECT * FROM student_data

SELECT gender, COUNT(gender) AS gender_data
FROM student_data
GROUP BY gender

SELECT gender, COUNT(gender) AS marks_data, MAX(marks),MIN(marks)
FROM student_data
GROUP BY gender
*/

