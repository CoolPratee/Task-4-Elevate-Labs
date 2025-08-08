
-- a. SELECT, WHERE, ORDER BY, GROUP BY
-- List all customers from India ordered by name
SELECT * FROM customers WHERE country = 'India' ORDER BY customer_name;

-- Count number of customers per country
SELECT country, COUNT(*) AS total_customers
FROM customers
GROUP BY country
ORDER BY total_customers DESC;

-- b. JOINS (INNER, LEFT, RIGHT)
-- INNER JOIN: Customers and their orders
SELECT c.customer_name, o.order_id, o.order_date, o.total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- LEFT JOIN: All customers with or without orders
SELECT c.customer_name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- RIGHT JOIN: Not directly supported in MySQL, use LEFT JOIN from reversed direction
SELECT o.order_id, c.customer_name
FROM orders o
Right JOIN customers c ON o.customer_id = c.customer_id;

-- c. Subqueries
-- Find customers who spent more than 1000 in total
SELECT customer_id, customer_name FROM customers
WHERE customer_id IN (
    SELECT o.customer_id
    FROM orders o
    GROUP BY o.customer_id
    HAVING SUM(o.total_amount) > 1000
);

-- d. Aggregate Functions (SUM, AVG)
-- Total and average order value per customer
SELECT c.customer_name, SUM(o.total_amount) AS total_spent, AVG(o.total_amount) AS avg_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

-- e. Create Views for Analysis
-- Create view for top customers (spending > 1000)
CREATE VIEW top_customers AS
SELECT c.customer_id, c.customer_name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING total_spent > 1000;

-- f. Optimize queries with indexes
-- Add index to speed up customer_id lookups
CREATE INDEX idx_orders_customer_id ON orders(customer_id);

-- Add index on email for fast customer search
CREATE INDEX idx_customers_email ON customers(email);
