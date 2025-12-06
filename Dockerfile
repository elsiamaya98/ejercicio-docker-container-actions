# Imagen base
FROM ubuntu:22.04

# Instalar utilidades necesarias
RUN apt-get update && apt-get install -y \
    curl \
    procps \
    && rm -rf /var/lib/apt/lists/*

# Set workdir
WORKDIR /app

# Script simple que imprime información del host y del contenedor
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

CMD ["/app/entrypoint.sh"]
