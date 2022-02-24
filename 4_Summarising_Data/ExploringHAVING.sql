-- We previously wrote the following query which returned the total sales per client 
SELECT
	client_id,
    SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id;

-- What if we only wanted to show sales from clients above a certain amount?
	-- We can't use WHERE in this situation because at this point we have not grouped our data so we don't know total sales
    -- This is where HAVING comes into play
    -- HAVING is used to filter data after we have grouped our rows   

SELECT
	client_id,
    SUM(invoice_total) AS total_sales,
    COUNT(*) AS number_of_invoices
FROM invoices
GROUP BY client_id
HAVING total_sales > 500;

-- You can apply multiple conditions to HAVING lets say
	-- we only want to see invoices above 500 and more than 5 invoices
    -- Here we can apply a compound search condition   

SELECT
	client_id,
    SUM(invoice_total) AS total_sales,
    COUNT(*) AS number_of_invoices
FROM invoices
GROUP BY client_id
HAVING total_sales > 500 AND number_of_invoices > 5;

-- To recap:
	-- WHERE: We can filter our data before our rows have been grouped
	-- HAVING: We can filter data after our rows have been grouped
    -- When using HAVING the fields we reference must also be references in the SELECT clause
    -- In contract, when using WHERE, you can reference different fields than what is in SELECT 
