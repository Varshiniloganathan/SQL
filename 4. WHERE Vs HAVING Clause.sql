-- HAVING Vs WHERE

-- Invalid use of group function
SELECT Position, AVG(Age)
FROM employee_record
WHERE AVG(Age) > 50
GROUP BY Position;
 
-- After GROUP BY, filter based on the aggregated function 
SELECT Position, AVG(Age)
FROM employee_record
GROUP BY Position
HAVING AVG(Age)>20;

SELECT * FROM employee_record;
SELECT Employee_Name, AVG(Salary)
FROM employee_record
WHERE Employee_Name LIKE '%Davis%'
GROUP BY Employee_Name
HAVING AVG(Salary) > 90000;
