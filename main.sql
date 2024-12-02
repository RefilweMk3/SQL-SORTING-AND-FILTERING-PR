CREATE TABLE sales_data (
    transaction_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    region VARCHAR(50),
    sales_amount DECIMAL(10, 2),
    transaction_date DATE
);

INSERT INTO sales_data (transaction_id, customer_name, region, sales_amount, transaction_date)
VALUES
(1, 'Alice', 'North', 250.75, '2024-01-01'),
(2, 'Bob', 'East', 120.50, '2024-01-03'),
(3, 'Charlie', 'North', 300.00, '2024-01-05'),
(4, 'Diana', 'West', 450.25, '2024-02-01'),
(5, 'Eve', 'East', 200.10, '2024-02-15'),
(6, 'Frank', 'North', 100.00, '2024-03-01'),
(7, 'Grace', 'South', 350.00, '2024-03-10');

SELECT * FROM sales_data
WHERE region = 'North';

SELECT SUM(sales_amount) AS total_sales
FROM sales_data;

SELECT AVG(sales_amount) AS average_sales
FROM sales_data;

SELECT region, COUNT(*) AS transaction_count
FROM sales_data
GROUP BY region;

SELECT MIN(sales_amount) AS min_sales, MAX(sales_amount) AS max_sales
FROM sales_data;

SELECT SUM(sales_amount) AS total_sales_east
FROM sales_data
WHERE region = 'East';
