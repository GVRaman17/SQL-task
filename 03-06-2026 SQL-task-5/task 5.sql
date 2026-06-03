use studentdb;
CREATE TABLE orders (order_id INT PRIMARY KEY,product_name VARCHAR(100),price DECIMAL(10,2),order_date DATE);
INSERT INTO orders (order_id, product_name, price, order_date) VALUES(1, 'Laptop', 1000.00, '2025-01-10'),(2, 'Phone', 500.00, '2025-01-11'),(3, 'Laptop', 1200.00, '2025-01-12'),(4, 'Tablet', 450.00, '2025-01-13'),(5, 'Phone', 600.00, '2025-01-14'),(6, 'Laptop', 900.00, '2025-01-15'),(7, 'Tablet', 550.00, '2025-01-16'),(8, 'Phone', 650.00, '2025-01-17');
select * from orders;
select count(*) as total_order,
 sum(price) as total_price,
 avg(price) as avg_price,
 min(price) as min_price,
 max(price) as max_price from orders group by product_name order by total_price desc;