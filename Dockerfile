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

RUN echo "${USERNAME} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/${USERNAME}

RUN chown -R "${USERNAME}" "/home/${USERNAME}"

RUN ln -sf /usr/share/zoneinfo/Asia/Jerusalem /etc/localtime && \
    echo "Asia/Jerusalem" > /etc/timezone

USER "${USERNAME}"

WORKDIR /home/"${USERNAME}"

SHELL ["/bin/bash", "-c"]

CMD ["/bin/env", "bash", "-i"]
