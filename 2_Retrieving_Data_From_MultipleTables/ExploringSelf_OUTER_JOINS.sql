USE sql_hr;
-- We previously write the below to retrieve all the employees and their manager
-- As you can see, when we execute it, we do not have a record for the manager
	-- This is because of our JOIN condition which only returns records which satisfies the condition
SELECT
	e.employee_id,
    e.first_name,
    m.first_name AS manager
FROM employees e
JOIN employees m			-- SELF JOIN
	ON e.reports_to = m.employee_id;
    
-- By adding an outer join we then get a record which includes the managers information    
SELECT
	e.employee_id,
    e.first_name,
    m.first_name AS manager
FROM employees e
LEFT JOIN employees m			-- SELF JOIN
	ON e.reports_to = m.employee_id
	