CREATE EXTERNAL TABLE orders(
order_id INT,
product_name STRING,
quantity INT,
amount DOUBLE
)
STORED AS PARQUET
LOCATION '/user/hadoop/raw_orders';