FROM ghcr.io/mlflow/mlflow:latest
RUN pip install --no-cache psycopg2-binary azure-storage-blob

