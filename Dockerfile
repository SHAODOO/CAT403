FROM ubuntu:20.04

# Update packages and install curl
RUN apt-get update && \
    apt-get install -y curl