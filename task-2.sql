-- 2. Create a query to reveal how many products are in each category. 
-- List categories and number of products. Join the `products` and `categories` tables. 
-- Name result columns as `category` and `number_of_products`, respectively. 
-- Order the results by the number_of_products descending and then by the category name. 
-- Save the SQL query as `task-2.sql`.
-- The result of your query contains eight rows

SELECT categories.category_name AS category, COUNT(products.product_id) AS number_of_products 
FROM categories 
LEFT JOIN products ON categories.category_id = products.category_id 
GROUP by category_name 
ORDER BY COUNT(products.product_id) DESC, category_name;