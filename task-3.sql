-- 3. The Head of Sales wants to know which products are the ten worst performing. 
-- List product names and the total sum of the order values. 
-- Order the results by the `sum` column to start with the worst performing product. 
-- Save the SQL query as `task-3.sql`.
-- The result of your query contains ten rows

SELECT product_name, ROUND(SUM(order_details.unit_price*quantity - (order_details.unit_price*quantity*discount))) AS sum
FROM products
JOIN order_details ON products.product_id = order_details.product_id
GROUP BY product_name
ORDER BY sum LIMIT 10;