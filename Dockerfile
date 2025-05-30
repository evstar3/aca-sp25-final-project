# Use an Ubuntu base image
FROM ubuntu:22.04

# Prevent interactive prompts during package install
ENV DEBIAN_FRONTEND=noninteractive

# Install APT packages
RUN apt-get update && apt-get install -y build-essential\
    curl\
    python3 \
    python3-pip \
    vim \
    git \
    sudo \
    scons \
    python3-dev \
    pre-commit \
    zlib1g \
    zlib1g-dev \
    libprotobuf-dev \
    protobuf-compiler \
    libprotoc-dev \
    libgoogle-perftools-dev \
    libboost-all-dev \
    libhdf5-serial-dev \
    python3-pydot \
    python3-venv \
    python3-tk \
    mypy \
    m4 \
    libcapstone-dev \
    libpng-dev \
    libelf-dev \
    pkg-config \
    wget \
    cmake \
    doxygen \
    && rm -rf /var/lib/apt/lists/*

# Set working directory inside the container
WORKDIR /project

# Default shell
CMD ["/bin/bash"]
