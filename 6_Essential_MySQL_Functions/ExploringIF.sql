-- The IF() function returns a value if a condition is TRUE, or another value if a condition is FALSE
-- We could use this here where, if the customers order was last year we return it to archive
-- Of this this year we return it to another column

SELECT
	order_id,
    order_date,
    IF(
		YEAR(order_date) = YEAR(NOW()),
        'Active',
        'Archive') AS status
FROM orders;


		
    
    

