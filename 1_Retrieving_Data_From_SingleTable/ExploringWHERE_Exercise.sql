/* Write a query which returns order
for this year only */

SELECT *
FROM sql_store.orders
WHERE order_date >= '2019-01-01';