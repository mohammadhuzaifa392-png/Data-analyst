/*
CREATE TABLE students1(
roll_no SERIAL PRIMARY KEY,
st_name VARCHAR NOT NULL,
course_id SMALLINT
);
CREATE TABLE courses(
course_id SMALLINT PRIMARY KEY,
course_name VARCHAR NOT NULL,
fees NUMERIC 
);
INSERT INTO students1(st_name,course_id)
VALUES('Huzaifa',101),
('Abdurraheem',102),
('Naeem',103),
('Sara',104),
('Fatema',105);

INSERT INTO courses(course_id,course_name,fees)
VALUES(101,'Java',6500),
(102,'Python',5600),
(103,'excelA',4500);

SELECT * FROM students1

SELECT * FROM courses
*/
SELECT students1.roll_no,students1.st_name,courses.course_name,courses.fees
FROM students1
LEFT JOIN courses
ON students1.course_id=courses.course_id