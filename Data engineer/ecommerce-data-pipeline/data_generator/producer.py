from kafka import KafkaProducer
import json
import random
import time

producer = KafkaProducer(
    bootstrap_servers='localhost:9092',
    value_serializer=lambda v: json.dumps(v).encode('utf-8')
)

products = [
    "Laptop",
    "Phone",
    "Keyboard",
    "Mouse",
    "Monitor"
]

while True:
    order = {
        "order_id": random.randint(1000, 9999),
        "product_name": random.choice(products),
        "quantity": random.randint(1, 5),
        "amount": round(random.uniform(500, 50000), 2)
    }

    producer.send("orders_topic", order)
    producer.flush()

    print(order)

    time.sleep(2)
