Table:
Products(product_id, name, category, price)

👉 Question:
Find the products whose price is higher than the average price of their own category.

SELECT product_id, name, price
FROM Products
WHERE price > (
    SELECT AVG(price)
    FROM Products p
    WHERE p.category = Products.category
);
