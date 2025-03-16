# FROM i386/ubuntu:16.04
FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y tmux vim && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    # echo "deb http://archive.ubuntu.com/ubuntu/ xenial universe" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y \
    tmux \
    vim \
    man \
    gcc \
    gdb \
    cmake \
    g++ \
    libc6-dev \
    libc6-dev-i386 \
    gcc-5-aarch64-linux-gnu \
    gcc-aarch64-linux-gnu \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN ln -sf /usr/share/zoneinfo/Asia/Jerusalem /etc/localtime && \
    echo "Asia/Jerusalem" > /etc/timezone

WORKDIR /root

CMD ["/bin/env", "bash", "-i"]
