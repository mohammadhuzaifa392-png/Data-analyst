/*
CREATE TABLE teachers(
teacher_id SERIAL PRIMARY KEY,
teacher_name VARCHAR (100) NOT NULL,
subject VARCHAR (50) NOT NULL
);

INSERT INTO teachers (teacher_name,subject)
VALUES ('mariya mam','marathi'),
('javeed sir','engish'),
('fatema mam','maths'),
('amir sir','deeniyat'),
('sharika mam','hindi'),
('rehan sir','physics')

SELECT * FROM teachers
*/
/*
CREATE TABLE studentss(
student_id SERIAL PRIMARY KEY,
student_name VARCHAR(100) NOT NULL,
student_class INT NOT NULL,
teacher_id INT
);

INSERT INTO studentss(student_name,student_class,teacher_id)
VALUES ('aslam',9,5),
('zainab',8,4),
('abdullah',9,3),
('saniya',8,5),
('khalid',7,4),
('aawes',7,2),
('nazim',8,1),
('saqueeb',9,6)

SELECT *FROM studentss
*/
SELECT
s.student_name,
s.student_class,
t.teacher_name,
t.subject
FROM studentss s
INNER JOIN teachers t
ON s.teacher_id = t.teacher_id;