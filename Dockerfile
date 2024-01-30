FROM ghcr.io/mlflow/mlflow:v2.10.0
RUN pip install --no-cache psycopg2-binary
