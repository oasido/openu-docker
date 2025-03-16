FROM i386/ubuntu:16.04

RUN apt-get update && \
    apt-get install -y tmux vim && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y \
    sudo \
    tmux \
    vim \
    man \
    gcc \
    gdb \
    cmake \
    g++ \
    gcc-multilib \
    build-essential \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ARG USERNAME
ARG PASSWORD

RUN useradd -m "${USERNAME}" && \
    echo "${USERNAME}:${PASSWORD}" | chpasswd && \
    usermod -aG sudo "${USERNAME}"

RUN ln -sf /usr/share/zoneinfo/Asia/Jerusalem /etc/localtime && \
    echo "Asia/Jerusalem" > /etc/timezone

SHELL ["/bin/bash", "-c"]


USER "${USERNAME}"
WORKDIR /home/"${USERNAME}"

CMD ["/bin/env", "bash", "-i"]
