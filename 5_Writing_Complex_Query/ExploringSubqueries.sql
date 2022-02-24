-- Find the products that are more expensive than lettuce (id = 3)

SELECT *
FROM products
WHERE unit_price > (
	SELECT unit_price
    FROM products
    WHERE product_id = 3
)

-- What's happening with this query?
-- When we execute this, SQL will first evalutate the sub query
	-- It will then pass the result in our outer query
-- Note: We can also write sub queries in SELECT or FROM which we will see later

