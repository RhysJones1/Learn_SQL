-- In SQL, a view is a virtual table based on the result-set of an SQL statement.
-- A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.
-- You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.
-- A view is created with the CREATE VIEW statement.
-- A view always shows up-to-date data! The database engine recreates the view, every time a user queries it. 

USE sql_invoicing;

CREATE VIEW sales_by_client AS
SELECT
	c.client_id,
    c.name,
    SUM(invoice_total) AS total_sales
FROM clients c
JOIN invoices i USING (client_id)
GROUP BY client_id, name;

SELECT *
FROM sales_by_client
ORDER BY total_sales DESC;

SELECT *
FROM sales_by_client
WHERE total_sales > 500;

SELECT *
FROM sales_by_client
JOIN clients USING (client_id);

SELECT
