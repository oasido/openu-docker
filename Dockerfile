FROM gcc:14.2.0-bookworm

# For GCC 5.4 (the version OpenU uses) uncomment the following:
# FROM gcc:5.4

# Comment this if you're using 5.4
RUN apt-get update && \
    apt-get install -y \
    vim \
    tmux \
    gcc-aarch64-linux-gnu \
    gcc-x86-64-linux-gnu \
    && rm -rf /var/lib/apt/lists/*

RUN ln -sf /usr/share/zoneinfo/Asia/Jerusalem /etc/localtime && \
    echo "Asia/Jerusalem" > /etc/timezone

WORKDIR /root

CMD ["/bin/env bash"]
