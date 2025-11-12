/*
SELECT * FROM employee
WHERE SALARY IN (5000,55000,68000)

SELECT * FROM employee
WHERE CITY IN ('New York','Dallas')

SELECT * FROM employee
WHERE CITY NOT IN ('New York','Dallas')

SELECT * FROM employee
WHERE gender NOT IN('Female')

SELECT * FROM employee
WHERE salary< ANY(ARRAY[70000])

SELECT * FROM employee
WHERE salary> ANY (ARRAY[65000])

SELECT * FROM employee
WHERE salary= ANY (ARRAY[50000])

SELECT * FROM employee
WHERE salary> ALL(ARRAY[50000])

SELECT * FROM employee
WHERE city ILIKE ANY(ARRAY['%New%','%York%'])

SELECT * FROM employee
WHERE emp_name = ALL (ARRAY['John Smith'])
*/
