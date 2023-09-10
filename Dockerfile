FROM microsoft/windowsservercore:ltsc2019

# Update packages and install curl
RUN apt-get update && \
    apt-get install -y curl