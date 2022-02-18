USE sql_store;			      /* USE statement allows us to point to a particular database */

SELECT * 				          /* SELECT Allows ut select the columns we want to retrieve. '*' is access all */ 
FROM customers			      /* FROM Allows us to point to a particular table within thr DB */
-- WHERE customer_id = 1	/* WHERE allows us to filter the result */
ORDER BY first_name			  /* ORDER BY allows us to order our data by a certain column */
                          /* While the above statements are optional, when we do use them, you cannot change the order of them */
