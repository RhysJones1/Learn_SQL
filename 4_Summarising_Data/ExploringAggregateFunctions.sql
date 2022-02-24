-- Aggregate functions they take a series of arguments and perform actions on that data
	-- MAX()
	-- MIN()
	-- AVG()
	-- SUM()
	-- COUNT()
USE sql_invoicing;    
SELECT 
	MAX(invoice_total) AS highest,
    MIN(invoice_total) AS lowest,
    AVG(invoice_total) AS average,
    SUM(invoice_total) AS total,
    COUNT(invoice_total) AS number_of_invoices,
    COUNT(payment_date) AS count_of_payments,    
    SUM(invoice_total * 1.1) AS ' Total With Uplift',
    -- By default, SQL includes duplicate values if you want to exclude duplicates you need to use DISTINCT:
    COUNT(*) AS total_records,
    COUNT(DISTINCT client_id) AS 'Total Records without Duplicate'
FROM invoices
WHERE invoice_date > '2019-07-01'						-- You can also filter

-- When using aggregate functions, they do not include NULL values, which can be problematic
	-- Take a look at payment_date. It returns 7 as it excluded all of the NULL values
    -- To get the full list you need to use COUNT(*)

