SET SQL_SAFE_UPDATES = 0;
DELETE FROM employee_promotion
WHERE Employee_ID IN (2, 5, 9);
SET SQL_SAFE_UPDATES = 1;

-- Joins
SELECT * FROM employee_record;
SELECT * FROM employee_promotion;

-- Normally JOIN refers INNER JOIN
-- ON means that we are joining tables based 'ON'
SELECT *
FROM employee_record AS emr
INNER JOIN employee_promotion AS emp
    ON emr.Employee_ID=emp.Employee_ID;

SELECT emr.Employee_ID,Age,Position
FROM employee_record AS emr
INNER JOIN employee_promotion AS emp
    ON emr.Employee_ID=emp.Employee_ID;

-- LEFT OUTER JOIN
SELECT *
FROM employee_record AS emr
LEFT JOIN employee_promotion AS emp
    ON emr.Employee_ID=emp.Employee_ID;

-- RIGHT OUTER JOIN
    
SELECT *
FROM employee_record AS emr
RIGHT JOIN employee_promotion AS emp
    ON emr.Employee_ID=emp.Employee_ID;
    
-- SELF JOIN
-- it is a join where you tie table with itself

SELECT emp1.Employee_ID AS emp_santa,
emp1.Employee_Name AS empname_santa,
emp2.Employee_ID AS emp_santa,
emp2.Employee_Name AS empname_santa
FROM employee_record emp1
JOIN employee_record emp2
	ON emp1.Employee_ID +1 =emp2.Employee_ID;
    
-- Joining multiple tables together

SELECT *
FROM employee_record AS emr
INNER JOIN employee_promotion AS emp
    ON emr.Employee_ID=emp.Employee_ID
INNER JOIN Department AS dpt
    ON emp.Dept_ID = dpt.Dept_ID;

ALTER TABLE employee_promotion
ADD COLUMN Dept_ID INT;

SET @counter = 1;
SET SQL_SAFE_UPDATES = 0;
UPDATE employee_promotion
SET Dept_ID = (@counter := (@counter % 6) + 1);
SET @counter = 1;
UPDATE employee_promotion
SET Dept_ID = (@counter := (@counter % 6) + 1)
LIMIT 305;
SET SQL_SAFE_UPDATES = 1;
select Dept_ID from employee_promotion;
