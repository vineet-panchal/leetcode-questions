SELECT p.product_name, s.year, s.price FROM Sales s
-- select the product name, year and price from the Sales and Product tables
JOIN Product p
-- join the Sales and Product tables
ON s.product_id = p.product_id
-- with condition that the product_id in Sales matches the product_id in Product