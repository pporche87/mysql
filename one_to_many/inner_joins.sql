-- IMPLICIT INNER JOIN
SELECT * FROM customers, orders WHERE
customers.id=orders.customer_id;

-- IMPLICIT INNER JOIN
SELECT first_name, last_name, order_date, amount
FROM customers, orders WHERE
	customers.id=orders.customer_id;

-- EXPLICIT INNER JOIN
SELECT * FROM customers
JOIN orders
	ON customers.id=orders.customer_id;

-- EXPLICIT INNER JOIN
SELECT first_name, last_name, order_date, amount
FROM customers
JOIN orders
	ON customers.id=orders.customer_id;

-- ARBITRATY JOIN = don't do this
SELECT * FROM customers
JOIN orders ON customers.id=orders.id;

SELECT * FROM orders, customers;

SELECT first_name, last_name, order_date, amount
FROM orders
JOIN customers
	ON customers.id=orders.customer_id;
