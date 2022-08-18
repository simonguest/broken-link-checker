FROM ubuntu:bionic

# Update
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends autoconf build-essential

# Install curl
RUN apt-get install -y curl

# Install Node 14.17.1
RUN apt-get -y install nodejs npm \
    && npm install -g n \
    && n 14.17.1

# Install broken link checker
RUN npm i -g broken-link-checker@0.7.8


