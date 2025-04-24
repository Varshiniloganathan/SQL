-- UNIONS combine random data together
SELECT Employee_ID FROM employee_record
UNION 
SELECT  Employee_ID FROM employee_promotion;

-- union all - allow duplicates
SELECT Employee_ID FROM employee_record
UNION ALL
SELECT  Employee_ID FROM employee_promotion;

-- Multiple select statement combined together by UNION

SELECT Employee_ID,Age, 'Old' AS Label FROM employee_record
WHERE Age>59
UNION
SELECT Employee_ID,gender, 'Highly Trained Employee female' AS Label FROM employee_promotion
WHERE no_of_trainings > 1 AND gender = 'f'
UNION
SELECT Employee_ID,gender, 'Highly Trained Employee male' AS Label FROM employee_promotion
WHERE no_of_trainings > 1 AND gender = 'm'
ORDER BY Employee_ID
;