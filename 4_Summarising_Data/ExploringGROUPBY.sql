-- The GROUP BY statement groups rows that have the same values into summary rows,
	-- like "find the number of customers in each country".
-- The GROUP BY statement is often used with aggregate functions
	-- (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

SELECT
	client_id,
	SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id
ORDER BY total_sales DESC;

-- What if we wanted to see total sales for the second half of the year?
SELECT
	client_id,
	SUM(invoice_total) AS total_sales
FROM invoices
WHERE invoice_date >= '2019-07-01'
GROUP BY client_id
ORDER BY total_sales DESC;

-- Note the order of the commands, this is mandatory, some are optional in terms of using them for example 
	-- WHERE and ORDER BY but if you use them, they need to be placed in the correct place
    
-- What if we wanted to group by multiple columns? Take a look at below:

SELECT
	state,
    city,
    SUM(invoice_total) AS total_sales
FROM invoices
JOIN clients USING (client_id)
GROUP BY state, city
