-- Create Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100),
    signup_date DATE
);

INSERT INTO customers VALUES
(1, 'Aditi Singh', 'Mumbai', '2023-01-10'),
(2, 'Ravi Kumar', 'Delhi', '2023-03-22'),
(3, 'Meena Roy', 'Bangalore', '2023-02-15'),
(4, 'Aman Yadav', 'Kolkata', '2023-04-05');

-- Create Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price INT
);

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 50000),
(102, 'Mobile Phone', 'Electronics', 20000),
(103, 'Office Chair', 'Furniture', 7000),
(104, 'Running Shoes', 'Footwear', 3500);

-- Create Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO orders VALUES
(1001, 1, 101, '2023-03-01', 1),
(1002, 2, 104, '2023-03-15', 2),
(1003, 1, 102, '2023-03-20', 1),
(1004, 3, 103, '2023-04-01', 1),
(1005, 4, 101, '2023-04-05', 1),
(1006, 2, 101, '2023-04-10', 1);