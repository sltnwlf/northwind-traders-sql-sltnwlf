-- 6. Your colleague wants to manually check the printed order labels. 
-- You have to create a sheet with all US customers with less than 5 orders. 
-- Display the total number of orders made by them. 
-- Include a comma-separated list of the order numbers. 
-- Save the SQL query as `task-6.sql`.
-- The result of the query contains five rows.

SELECT company_name, COUNT(orders.customer_id) AS orders, ARRAY_AGG(order_id) AS order_ids
FROM customers 
JOIN orders ON customers.customer_id = orders.customer_id
WHERE customers.country LIKE 'USA'
GROUP BY company_name 
ORDER BY orders, company_name LIMIT 5;