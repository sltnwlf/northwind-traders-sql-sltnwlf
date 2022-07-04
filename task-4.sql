-- 4. Business developers want to know the list of countries with more than five customers. 
-- Save the SQL query as `task-4.sql`.
-- The result of the query is the following.
-- The result of your query contains five rows

SELECT country, COUNT(customer_id) AS number_of_customers
FROM customers
GROUP BY country
HAVING COUNT(customer_id) > 5
ORDER BY number_of_customers DESC;