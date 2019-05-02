FROM ubuntu:16.04

# install utilities & ansible
RUN apt-get update -y \
    && apt-get install -y \
    vim \
    ssh \
    curl \
    wget \
    unzip \
    ansible \
    python-pip

RUN echo "root:ansible" | chpasswd	# set ansible as root password

# Cleanup
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /src
