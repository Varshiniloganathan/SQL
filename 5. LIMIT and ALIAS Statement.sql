-- Limit & Aliasing

SELECT * 
FROM employee_record;

-- Limit is to specify how many rows you need from the record
SELECT * 
FROM employee_record
LIMIT 3;

-- We need 3 Oldest Employee

SELECT * 
FROM employee_record
ORDER BY Age DESC
LIMIT 3;

-- SELECT 1 next to the 3rd position

SELECT * 
FROM employee_record
ORDER BY Age DESC
LIMIT 3,1;

-- SELECT 1 next to the 1st Position
SELECT * 
FROM employee_record
ORDER BY Age DESC
LIMIT 2,1;

-- Aliasing - to change the name of the column

SELECT Position , AVG(Age) AS Average_age
FROM employee_record
GROUP BY Position
HAVING Average_age > 40;

SELECT Position , AVG(Age)  Average_age
FROM employee_record
GROUP BY Position
HAVING Average_age > 40;




