Table:
Orders(order_id, customer_id, amount)

👉 Question:
Find the order(s) with the highest amount.

SELECT order_id, amount
FROM Orders
WHERE amount = (SELECT MAX(amount) FROM Orders);
