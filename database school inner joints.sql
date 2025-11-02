/*
CREATE TABLE students(
roll_no SERIAL PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
gender VARCHAR(30) NOT NULL,
class_id SMALLINT NOT NULL
);

CREATE TABLE classes(
class_id SERIAL PRIMARY KEY,
class_name NUMERIC NOT NULL,
teacher_id SMALLINT
);

CREATE TABLE teachers(
teacher_id SERIAL PRIMARY KEY,
teacher_name VARCHAR(50) NOT NULL,
education VARCHAR(30) NOT NULL,
subject_id SMALLINT
);

CREATE TABLE subjects(
subject_id SERIAL PRIMARY KEY,
subject_name VARCHAR(30) NOT NULL
);

INSERT INTO subjects(subject_name)
VALUES('english'),
('maths'),
('science'),
('hindi'),
('marathi'),
('general studies')

SELECT * FROM subjects

INSERT INTO teachers(teacher_name,education,)
VALUES('ejaj baig','bsc'),
('asif shaikh','Ded'),
('shan e hind','Bed'),
('mariya','phd'),
('ayaz','diploma in mechanics'),
('bushra','msc')

SELECT * FROM teachers

INSERT INTO teachers(subject_id)
VALUES(3),
(2),
(5),
(4),
(6),
(1)

CREATE TABLE teacher(
teacher_id SERIAL PRIMARY KEY,
teacher_name VARCHAR(50) NOT NULL,
education VARCHAR(30) NOT NULL,
subject_id SMALLINT NOT NULL
);

INSERT INTO teacher(teacher_name,education,subject_id)
VALUES('ejaj baig','bsc',2),
('asif shaikh','Ded',3),
('shan e hind','Bed',1),
('mariya','phd',5),
('ayaz','diploma in mechanics',6),
('bushra','msc',4)

SELECT * FROM teacher

INSERT INTO classes(class_name,teacher_id)
VALUES(7,2),
(6,5),
(10,3),
(5,4),
(8,1),
(9,6)

SELECT * FROM classes


INSERT INTO students (student_name, gender, class_id)
VALUES('Aarav Sharma', 'Male', 1),
('Ananya Verma', 'Female', 2),
('Rohan Singh', 'Male', 3),
('Isha Patel', 'Female', 4),
('Aditya Mehta', 'Male', 5),
('Kritika Nair', 'Female', 6),
('Vihaan Gupta', 'Male', 1),
('Diya Iyer', 'Female', 2),
('Arjun Das', 'Male', 3),
('Meera Rao', 'Female', 4),
('Kabir Malhotra', 'Male', 5),
('Aditi Joshi', 'Female', 6),
('Ritvik Bhat', 'Male', 1),
('Saanvi Kapoor', 'Female', 2),
('Yash Raj', 'Male', 3),
('Navya Pillai', 'Female', 4),
('Ishaan Kumar', 'Male', 5),
('Aarohi Reddy', 'Female', 6),
('Reyansh Dutta', 'Male', 1),
('Myra Chatterjee', 'Female', 2),
('Devansh Singh', 'Male', 3),
('Anvi Shah', 'Female', 4),
('Hriday Jain', 'Male', 5),
('Sara George', 'Female', 6),
('Krish Chauhan', 'Male', 1),
('Riya Ghosh', 'Female', 2),
('Vivaan Sinha', 'Male', 3),
('Tara Menon', 'Female', 4),
('Aryan Yadav', 'Male', 5),
('Kiara Dey', 'Female', 6),
('Laksh Khanna', 'Male', 1),
('Nisha Roy', 'Female', 2),
('Ayaan Paul', 'Male', 3),
('Mahi Deshmukh', 'Female', 4),
('Rudra Mishra', 'Male', 5),
('Zara Bansal', 'Female', 6),
('Manav Bhattacharya', 'Male', 1),
('Aaradhya Joshi', 'Female', 2),
('Kian Thomas', 'Male', 3),
('Vanya Sood', 'Female', 4),
('Nivaan Shetty', 'Male', 5),
('Pari Anand', 'Female', 6),
('Aaditya Raina', 'Male', 1),
('Avni Chawla', 'Female', 2),
('Kabir Gaur', 'Male', 3),
('Charvi Dubey', 'Female', 4),
('Riaan Oberoi', 'Male', 5),
('Ira Pandey', 'Female', 6),
('Samarth Taneja', 'Male', 1),
('Sneha Lal', 'Female', 2)

SELECT * FROM students
*/
SELECT s.student_name,s.gender,c.class_name,t.teacher_name,t.education,a.subject_name
FROM students s
INNER JOIN classes c
ON s.class_id=c.class_id
INNER JOIN teacher t
ON c.teacher_id=t.teacher_id
INNER JOIN subjects a
ON t.subject_id=a.subject_id
