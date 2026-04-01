# Build stage
FROM ubuntu:22.04 AS builder

# Instala dependências
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    libglu1-mesa \
    build-essential \
    pkg-config \
    libgtk-3-dev \
    && apt-get clean

# Configura Flutter
ENV FLUTTER_VERSION 3.32.5
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter
ENV PATH="/usr/local/flutter/bin:${PATH}"
RUN cd /usr/local/flutter && git checkout 3.32.5
RUN flutter config --enable-web

WORKDIR /app
COPY . .

# Install dependencies and compile the server executable
RUN dart pub get
RUN dart compile exe bin/main.dart -o bin/server

# Final stage
FROM debian:stable-slim

# Install runtime dependencies (inc. ca-certificates for HTTPS)
RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*

# Environment variables
ENV runmode=development
ENV serverid=default
ENV logging=normal
ENV role=monolith

# Copy compiled server executable
COPY --from=build /app/bin/server server

# Copy configuration files and resources
COPY --from=build /app/config/ config/
COPY --from=build /app/migrations/ migrations/

# This file is required to enable the endpoint log filter in Insights.
COPY --from=build /app/lib/src/generated/protocol.yaml lib/src/generated/protocol.yaml

# Expose ports
EXPOSE 8080
EXPOSE 8081
EXPOSE 8082

# Define the entrypoint command
# Using shell form to allow variable expansion
ENTRYPOINT ./server --apply-migrations --mode=$runmode --server-id=$serverid --logging=$logging --role=$role
