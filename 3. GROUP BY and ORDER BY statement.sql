-- GROUP BY
SELECT *
FROM employee_record;

-- When you are selecting a column that is non-aggregated columns then it should match with GROUP BY column
-- Incorrect
SELECT Position
FROM employee_record
GROUP BY Department;
-- Correct
SELECT Department
FROM employee_record
GROUP BY Department;

SELECT Department, AVG(Salary),MAX(Age),MIN(Age),COUNT(Age)
FROM employee_record
GROUP BY Department;

-- ORDER BY
-- Either Ascending / Descending
-- First it orders Age then it orders Position within the age
SELECT *
FROM employee_record
ORDER BY Age,Position;

SELECT *
FROM employee_record
ORDER BY Position,Age DESC;

-- ORDER BY using position of the column (Not-Recommended)
SELECT *
FROM employee_record
ORDER BY 6,3;









