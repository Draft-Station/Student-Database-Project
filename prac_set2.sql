create database test ;
USE test ;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    email VARCHAR(50),
    city VARCHAR(30),
    registration_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2),
    stock_quantity INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(20)
);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2)
);

INSERT INTO customers VALUES
(1, 'Rajesh', 'Kumar', 'rajesh.k@gmail.com', 'Mumbai', '2023-01-15'),
(2, 'Priya', 'Sharma', 'priya.s@yahoo.com', 'Delhi', '2023-02-20'),
(3, 'Amit', 'Patel', 'amit.p@hotmail.com', 'Ahmedabad', '2023-01-10'),
(4, 'Sneha', 'Gupta', 'sneha.g@gmail.com', 'Bangalore', '2023-03-05'),
(5, 'Vikram', 'Singh', 'vikram.s@gmail.com', 'Mumbai', '2023-04-12'),
(6, 'Neha', 'Reddy', 'neha.r@yahoo.com', 'Hyderabad', '2023-05-18'),
(7, 'Karthik', 'Iyer', 'karthik.i@gmail.com', 'Chennai', '2023-02-28'),
(8, 'Ananya', 'Desai', 'ananya.d@hotmail.com', 'Pune', '2023-06-22'),
(9, 'Suresh', 'Nair', 'suresh.n@gmail.com', 'Kochi', '2023-03-15'),
(10, 'Meera', 'Krishnan', 'meera.k@yahoo.com', 'Chennai', '2023-04-30'),
(11, 'Arjun', 'Rao', 'arjun.r@gmail.com', 'Bangalore', '2023-05-25'),
(12, 'Pooja', 'Shah', 'pooja.s@hotmail.com', 'Mumbai', '2023-06-10'),
(13, 'Kiran', 'Shah', 'kiran.s@gmail.com', 'Delhi', '2023-07-05'),
(14, 'Lakshmi', 'Menon', 'lakshmi.m@yahoo.com', 'Bangalore', '2023-08-12'),
(15, 'Harish', 'Verma', 'harish.v@gmail.com', 'Jaipur', '2023-09-20'),
(16, 'Sunita', 'Devi', 'sunita.d@hotmail.com', 'Lucknow', '2023-10-15'),
(17, 'Manoj', 'Tiwari', 'manoj.t@gmail.com', 'Patna', '2023-11-01'),
(18, 'Divya', 'Anand', 'divya.a@yahoo.com', 'Chandigarh', '2023-12-10'),
(19, 'Ravi', 'Sharma', 'ravi.s@gmail.com', 'Mumbai', '2024-01-05'),
(20, 'Geeta', 'Kumari', 'geeta.k@hotmail.com', 'Ranchi', '2024-01-20'),
(21, 'Elias', 'Thorne', 'elias.t@gmail.com', 'Seattle', '2023-03-10'),
(22, 'Amara', 'Okafor', 'amara.o@yahoo.com', 'Chicago', '2023-04-15'),
(23, 'Liam', 'Chen', 'liam.c@gmail.com', 'San Francisco', '2023-05-20'),
(24, 'Sofia', 'Rossi', 'sofia.r@hotmail.com', 'Boston', '2023-06-25'),
(25, 'Kabir', 'Khan', 'kabir.k@gmail.com', 'Mumbai', '2024-02-01');

INSERT INTO products VALUES
(101, 'Wireless Mouse', 'Electronics', 25.99, 150),
(102, 'Mechanical Keyboard', 'Electronics', 89.99, 80),
(103, 'USB-C Cable', 'Accessories', 12.50, 300),
(104, 'Laptop Stand', 'Accessories', 45.00, 120),
(105, 'Bluetooth Headphones', 'Electronics', 79.99, 95),
(106, 'Webcam HD', 'Electronics', 59.99, 60),
(107, 'Monitor 27 inch', 'Electronics', 299.99, 40),
(108, 'Desk Lamp LED', 'Accessories', 34.99, 200),
(109, 'External SSD 1TB', 'Storage', 109.99, 75),
(110, 'Laptop Backpack', 'Accessories', 55.00, 180),
(111, 'Wireless Charger', 'Electronics', 29.99, 250),
(112, 'USB Hub', 'Accessories', 24.99, 140),
(113, 'Gaming Mouse', 'Electronics', 69.99, 85),
(114, 'Monitor Arm', 'Accessories', 89.99, 50),
(115, 'Webcam 4K', 'Electronics', 149.99, 30),
(116, 'Desk Organizer', 'Accessories', 18.99, 220),
(117, 'External HDD 2TB', 'Storage', 79.99, 100),
(118, 'Wireless Earbuds', 'Electronics', 129.99, 110),
(119, 'Screen Cleaner', 'Accessories', 9.99, 500),
(120, 'Laptop Cooling Pad', 'Accessories', 35.99, 90);

INSERT INTO orders VALUES
(1001, 1, '2024-01-15', 115.98, 'Delivered'),
(1002, 2, '2024-01-16', 89.99, 'Shipped'),
(1003, 3, '2024-01-17', 138.49, 'Delivered'),
(1004, 4, '2024-01-18', 299.99, 'Processing'),
(1005, 5, '2024-01-20', 45.00, 'Delivered'),
(1006, 6, '2024-01-22', 164.98, 'Shipped'),
(1007, 7, '2024-01-25', 59.99, 'Delivered'),
(1008, 8, '2024-01-28', 344.98, 'Processing'),
(1009, 9, '2024-02-01', 25.99, 'Delivered'),
(1010, 10, '2024-02-03', 189.98, 'Shipped'),
(1011, 11, '2024-02-05', 69.99, 'Delivered'),
(1012, 12, '2024-02-08', 154.98, 'Cancelled'),
(1013, 13, '2024-02-10', 24.99, 'Delivered'),
(1014, 14, '2024-02-12', 109.99, 'Shipped'),
(1015, 15, '2024-02-15', 44.98, 'Delivered'),
(1016, 16, '2024-02-18', 134.98, 'Processing'),
(1017, 17, '2024-02-20', 299.99, 'Shipped'),
(1018, 18, '2024-02-22', 18.99, 'Delivered'),
(1019, 19, '2024-02-25', 209.98, 'Delivered'),
(1020, 20, '2024-02-28', 79.99, 'Shipped'),
(1021, 21, '2024-03-01', 149.99, 'Delivered'),
(1022, 22, '2024-03-03', 35.99, 'Processing'),
(1023, 23, '2024-03-05', 55.00, 'Shipped'),
(1024, 24, '2024-03-08', 12.50, 'Delivered'),
(1025, 25, '2024-03-10', 104.98, 'Delivered'),
(1026, 1, '2024-03-12', 89.99, 'Shipped'),
(1027, 5, '2024-03-15', 299.99, 'Processing'),
(1028, 8, '2024-03-18', 25.99, 'Delivered'),
(1029, 12, '2024-03-20', 69.99, 'Shipped'),
(1030, 15, '2024-03-22', 109.99, 'Delivered');

INSERT INTO order_items VALUES
(1, 1001, 102, 1, 89.99),
(2, 1001, 103, 2, 12.50),
(3, 1002, 102, 1, 89.99),
(4, 1003, 105, 1, 79.99),
(5, 1003, 103, 2, 12.50),
(6, 1003, 119, 1, 9.99),
(7, 1004, 107, 1, 299.99),
(8, 1005, 104, 1, 45.00),
(9, 1006, 105, 1, 79.99),
(10, 1006, 108, 1, 34.99),
(11, 1006, 119, 5, 9.99),
(12, 1007, 106, 1, 59.99),
(13, 1008, 107, 1, 299.99),
(14, 1008, 104, 1, 45.00),
(15, 1009, 101, 1, 25.99),
(16, 1010, 118, 1, 129.99),
(17, 1010, 108, 1, 34.99),
(18, 1010, 119, 3, 9.99),
(19, 1011, 113, 1, 69.99),
(20, 1012, 105, 1, 79.99),
(21, 1012, 103, 3, 12.50),
(22, 1012, 116, 2, 18.99),
(23, 1013, 112, 1, 24.99),
(24, 1014, 109, 1, 109.99),
(25, 1015, 108, 1, 34.99),
(26, 1015, 119, 1, 9.99),
(27, 1016, 118, 1, 129.99),
(28, 1017, 107, 1, 299.99),
(29, 1018, 116, 1, 18.99),
(30, 1019, 109, 1, 109.99),
(31, 1019, 105, 1, 79.99),
(32, 1020, 117, 1, 79.99),
(33, 1021, 115, 1, 149.99),
(34, 1022, 120, 1, 35.99),
(35, 1023, 110, 1, 55.00),
(36, 1024, 103, 1, 12.50),
(37, 1025, 111, 1, 29.99),
(38, 1025, 103, 2, 12.50),
(39, 1025, 119, 6, 9.99),
(40, 1026, 102, 1, 89.99);

SELECT COUNT(*) FROM customers;    -- Should be 25
SELECT COUNT(*) FROM products;     -- Should be 20
SELECT COUNT(*) FROM orders;       -- Should be 30
SELECT COUNT(*) FROM order_items;  -- Should be 40






SELECT SUM(unit_price) AS total_revenue
FROM order_items;



SELECT * FROM orders
    WHERE order_date LIKE '2024-01%' ;   --  WHERE order_date BETWEEN '2024-01-01' AND '2024-01-30';




SELECT products.product_name , products.price
    FROM products
    WHERE price = (SELECT MAX(price) FROM products) ;


SELECT COUNT(*) AS Quantity , orders.status
    FROM orders
    GROUP BY status
    ORDER BY Quantity ASC ;


SELECT * FROM customers
    WHERE city = 'Mumbai' AND registration_date LIKE '2023%' ;

SELECT customers.first_name , orders.order_id , orders.status
    FROM customers
    JOIN orders on customers.customer_id = orders.customer_id ;
