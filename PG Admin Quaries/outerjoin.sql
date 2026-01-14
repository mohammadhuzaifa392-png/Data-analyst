/*
CREATE TABLE students(
roll_no SMALLINT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
teacher_id SMALLINT 
);


CREATE TABLE teachers(
teacher_id SMALLINT PRIMARY KEY,
teacher_name VARCHAR(50) NOT NULL,
subjects VARCHAR(50)
);


INSERT INTO students(roll_no,student_name,teacher_id)
VALUES
(1,'Naeem',102),
(2,'Hammad',103),
(4,'Salim',108),
(5,'Abdullah',109),
(9,'Kalim',1011),
(10,'Fatema',1012);

INSERT INTO 
teachers(teacher_id,teacher_name,subjects)
VALUES(101,'Sajid','Html'),
(102,'Nazim','python'),
(103,'Moiz','cpp'),
(104,'Bushra','excel'),
(105,'Sara','github'),
(1011,'Aslam','coding'),
(1012,'Saqueeb','words');

SELECT * FROM teachers
SELECT * FROM students
*/

SELECT s.roll_no,s.student_name,t.teacher_name,t.subjects
FROM students s
FULL OUTER JOIN teachers t
ON s.teacher_id = t.teacher_id