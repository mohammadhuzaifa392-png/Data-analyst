CREATE TABLE student_info(
studentid SERIAL PRIMARY KEY,
stname VARCHAR (30) NOT NULL,
gender CHAR (1), 
age SMALLINT,
marks NUMERIC (5,2),
stclass INTEGER NOT NULL
)