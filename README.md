# mlflow-postgres

A Docker image for MLFlow with Postgres dependencies installed

## Why?

The current official Docker image for MLFlow does not include the Postgres dependencies at this current time. Errors when running say that `psycopg2` is not installed. This image is a simple copy of the official image with the extra dependency installed.

This also includes the dependencies required for Azure Blob Storage `azure-storage-blob`.

There look to be official images coming soon.

## Local build

To build the image locally

```bash
docker build -t mlflow-postgres .
```

To build the image for multiple architectures and push

```bash
docker buildx build --platform linux/amd64,linux/arm64 -t ttamg76/mlflow-postgres:latest --push .
```

## Dockerhub

This image is available on Dockerhub - https://hub.docker.com/repository/docker/ttamg76/mlflow-postgres/tags

To use this image in docker-compose

````yaml
version: "3.8"

services:
    mlflow:
        image: ttamg76/mlflow-postgres:latest
        ...
    ```
````
