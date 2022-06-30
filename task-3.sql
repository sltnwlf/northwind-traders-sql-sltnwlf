SELECT product_name,
ROUND(SUM(order_details.unit_price*quantity-(order_details.unit_price*quantity*discount))) AS sum
FROM products
JOIN order_details
ON products.product_id = order_details.product_id
GROUP BY product_name
ORDER BY sum
LIMIT 10;