-- Select employees whose salary is 
-- above the average in their office

USE sql_hr; 

SELECT *
FROM employees
WHERE salary > (
	SELECT AVG(salary)
    FROM employees
    WHERE office_id = employees.office_id
)
