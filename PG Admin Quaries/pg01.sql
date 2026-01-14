CREATE TABLE marks(
rollno SMALLINT PRIMARY KEY,
stname VARCHAR (50) NOT NULL,
english SMALLINT NOT NULL,
maths SMALLINT NOT NULL,
science SMALLINT NOT NULL,
total SMALLINT GENERATED ALWAYS AS (english+maths+science) STORED,
percentage NUMERIC (5,2) GENERATED ALWAYS AS ((english+maths+science)/3.0)
)