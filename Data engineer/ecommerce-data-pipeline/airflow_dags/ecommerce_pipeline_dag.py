from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

with DAG(
    dag_id="ecommerce_pipeline",
    start_date=datetime(2026, 1, 1),
    schedule_interval="@daily",
    catchup=False
) as dag:

    spark_job = BashOperator(
        task_id="run_spark",
        bash_command="""
        spark-submit --packages org.apache.spark:spark-sql-kafka-0-10_2.13:4.1.2 /home/mk-math/Mk\\ Data\\ eng/Projects/Data\\ engineer/ecommerce-data-pipeline/spark_jobs/spark_stream.py
        """
    )