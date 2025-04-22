-- WHERE CLAUSE

SELECT *
from employee_record
WHERE Employee_Name = 'Sophia Brown';

SELECT *
from employee_record
WHERE Salary <= 40000;

SELECT * 
FROM employee_record 
WHERE Position != 'Consultant';

SELECT * 
FROM employee_record 
WHERE Joining_Date > '2024-01-01';

-- AND OR NOT -- Logical Operators
SELECT * 
FROM employee_record 
WHERE Joining_Date > '2024-01-01'
AND Position = 'Analyst';

SELECT * 
FROM employee_record 
WHERE Joining_Date > '2024-01-01'
OR Position = 'Analyst';


SELECT * 
FROM employee_record 
WHERE Employee_Name = 'Sophia Thomas'
 AND Country = 'Canada';

SELECT * 
FROM employee_record 
WHERE (Employee_Name = 'Sophia Thomas'
 AND Country = 'Canada') OR Age > 40 ;

-- LIKE Statement
-- % and _
-- % means anything
-- _ means specific value
SELECT * 
FROM employee_record
WHERE Employee_Name LIKE '%ly%';

SELECT * 
FROM employee_record
WHERE Employee_Name LIKE 'a%';

SELECT * 
FROM employee_record
WHERE Employee_Name LIKE '__a%';

SELECT * 
FROM employee_record
WHERE Joining_Date LIKE '2023%'

-- 

