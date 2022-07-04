-- 5. Your CEO asks you to help her create her end-of-year presentation. 
-- Provide her with the numbers for the year 1997 broken down by months. 
-- Save the SQL query as `task-5.sql`.
-- The result of the query is the following.
-- The result of your query contains twelve rows

SELECT EXTRACT(YEAR FROM order_date) AS year, 
EXTRACT(MONTH FROM order_date) AS month,
COUNT(DISTINCT order_details.order_id) AS order_count,
ROUND(SUM(unit_price*quantity*(1-discount))) AS revenue
FROM order_details
JOIN orders ON order_details.order_id = orders.order_id
WHERE EXTRACT(YEAR FROM order_date) = 1997
GROUP BY EXTRACT(MONTH FROM order_date), EXTRACT(YEAR FROM order_date);