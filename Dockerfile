FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl \
    procps \
    iputils-ping \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /ejercicio-docker-container-actions

COPY entrypoint.sh entrypoint.sh
RUN sed -i 's/\r$//' entrypoint.sh
RUN chmod +x entrypoint.sh

CMD ["bash", "./entrypoint.sh"]
