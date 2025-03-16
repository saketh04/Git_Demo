FROM debian:10

RUN apt-get update && \
    apt-get install -y \
    curl \
    python \
    openssl=1.1.1d-0+deb10u6 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

CMD ["bash"]
