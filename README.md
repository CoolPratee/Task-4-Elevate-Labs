SQL for Data Analysis 

Objective:
Use SQL queries to extract and analyze structured data from an e-commerce database.

Tools Used:

MySQL Workbench

MySQL Server (Local Instance)

E-commerce Sample Dataset (custom-created)

Database Tables:

customers: Customer information

products: Product catalog

orders: Orders placed by customers

order_items: Items purchased within each order

Task Breakdown:

a. Basic SQL Queries

Used SELECT and WHERE to retrieve customers from specific countries.

Applied ORDER BY to sort customer names alphabetically.

Used GROUP BY to count customers per country.

b. JOINs

INNER JOIN: Fetched customers along with their orders.

LEFT JOIN: Retrieved all customers, including those without orders.

Simulated RIGHT JOIN using LEFT JOIN with tables reversed.

c. Subqueries

Identified customers with total spending over 1000 using a subquery with HAVING.

d. Aggregate Functions

Calculated SUM and AVG of total spending per customer.

e. Views

Created a view top_customers to easily access customers with total purchases exceeding 1000.

f. Indexes

Added indexes on orders.customer_id and customers.email to optimize performance for frequent queries.

Deliverables:

SQL file: ecommerce_analysis_task4.sql (contains all queries)

Screenshots: Captured outputs of all queries executed in MySQL Workbench

Outcome:
Successfully demonstrated the use of SQL for data extraction, aggregation, filtering, and optimization. Gained practical understanding of data relationships, query performance, and analytical SQL techniques.

