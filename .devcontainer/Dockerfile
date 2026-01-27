FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# https://github.com/FHIR/sushi/releases/tag/v3.17.0
ARG SUSHI_VERSION="v3.17.0"
# https://github.com/HL7/fhir-ig-publisher/releases/tag/2.0.30
ARG FHIR_IG_PUBLISHER_VERSION="2.0.30"
ARG FHIR_IG_PUBLISHER_SHA256SUM="2501140e3dbb9e62c51d44327fb3dbfc2d9d32b197f3d681b9b728790013bec0"

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /opt

RUN apt update \
  && apt install -y --no-install-recommends \
    ca-certificates \
    curl \
    git \
    gnupg \
    build-essential \
    zlib1g-dev \
    libffi-dev \
    libyaml-dev \
    ruby-full \
    openjdk-17-jre-headless \
  && apt clean \
  && rm -rf /var/lib/apt/lists/*

# Setup Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_24.x | bash - \
  && apt install -y --no-install-recommends nodejs

# Setup Ruby
RUN gem install --no-document jekyll bundler

# Install SUSHI
RUN npm install -g fsh-sushi@${SUSHI_VERSION}

# Download FHIR IG Publisher 
RUN mkdir -p input-cache \
  && curl -L "https://github.com/HL7/fhir-ig-publisher/releases/download/${FHIR_IG_PUBLISHER_VERSION}/publisher.jar" -o "input-cache/publisher.jar" \
  && echo "${FHIR_IG_PUBLISHER_SHA256SUM}  input-cache/publisher.jar" | sha256sum -c - \
  && chmod 644 input-cache/publisher.jar
