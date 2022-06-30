select categories.category_name AS category, COUNT(products.product_id) AS number_of_products 
FROM categories 
LEFT JOIN products 
ON 
categories.category_id=products.category_id 
GROUP by category_name 
ORDER BY COUNT(products.product_id) DESC, category_name;