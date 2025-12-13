Table:
Orders(order_id, customer_id, order_date)

👉 Question:
Find the most recent order date for each customer, returning:

customer_id

order_date

SELECT customer_id, order_date
FROM Orders
WHERE order_date = (
    SELECT MAX(order_date)
    FROM Orders o
    WHERE o.customer_id = Orders.customer_id
);
