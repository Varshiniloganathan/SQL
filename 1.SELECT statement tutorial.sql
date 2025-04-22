SELECT * FROM employee_record;
SELECT Employee_name,Position from employee_record;

SELECT Employee_name,
Position,
age,
(age+20)* 10 + 10
FROM employee_record;

# PEMDAS

/*DISTINCT - Used to find unique values alone */
SELECT DISTINCT Country,Position FROM employee_record;