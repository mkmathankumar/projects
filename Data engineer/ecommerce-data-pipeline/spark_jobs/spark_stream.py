from pyspark.sql import SparkSession
from pyspark.sql.functions import col, from_json
from pyspark.sql.types import StructType, StructField, IntegerType, StringType, DoubleType

# Spark Session
spark = SparkSession.builder \
    .appName("EcommerceKafkaPipeline") \
    .getOrCreate()

# Kafka Stream
df = spark.readStream \
    .format("kafka") \
    .option("kafka.bootstrap.servers", "localhost:9092") \
    .option("subscribe", "orders_topic") \
    .load()

# Convert binary to string
orders_df = df.selectExpr("CAST(value AS STRING)")

# JSON Schema
schema = StructType([
    StructField("order_id", IntegerType(), True),
    StructField("product_name", StringType(), True),
    StructField("quantity", IntegerType(), True),
    StructField("amount", DoubleType(), True)
])

# Parse JSON
parsed_df = orders_df.select(
    from_json(col("value"), schema).alias("data")
).select("data.*")

# Print schema
parsed_df.printSchema()

# Stream to console
query = parsed_df.writeStream \
    .format("console") \
    .outputMode("append") \
    .start()

query.awaitTermination()
