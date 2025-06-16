-- 1. CTE for Total Sales per Category
WITH category_sales AS (
    SELECT 
        p.category,
        SUM(p.price * o.quantity) AS total_sales
    FROM orders o
    JOIN products p ON o.product_id = p.product_id
    GROUP BY p.category
)
SELECT * FROM category_sales;

-- 2. Rank Customers by Total Spend
SELECT 
    c.name,
    c.city,
    SUM(p.price * o.quantity) AS total_spent,
    RANK() OVER (ORDER BY SUM(p.price * o.quantity) DESC) AS spend_rank
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.customer_id, c.name, c.city;

-- 3. Latest Product Purchased by Each Customer
SELECT 
    c.name,
    p.product_name,
    o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE o.order_date = (
    SELECT MAX(o2.order_date)
    FROM orders o2
    WHERE o2.customer_id = o.customer_id
);

-- 4. Monthly Sales Trend using Window Functions
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(p.price * o.quantity) AS monthly_sales,
    SUM(SUM(p.price * o.quantity)) OVER (ORDER BY DATE_TRUNC('month', order_date)) AS running_total
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month;