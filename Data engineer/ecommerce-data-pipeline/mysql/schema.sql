CREATE DATABASE ecommerce;

CREATE TABLE sales_report(
    order_id INT,
    product_name VARCHAR(100),
    quantity INT,
    amount DOUBLE,
    order_time DATETIME
);