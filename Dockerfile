FROM ubuntu:14.10
MAINTAINER Auke Willem Oosterhoff <oosterhoff@baopt.nl>


RUN apt-get update && \
    apt-get install -y \
    build-essential \
    bash \
    bc \
    binutils \
    build-essential \
    bzip2 \
    cpio \
    g++ \
    gcc \
    git \
    gzip \
    make \
    libncurses5-dev \
    patch \
    perl \
    python \
    rsync \
    sed \
    tar \
    unzip \
    wget

WORKDIR /root
RUN git clone git://git.buildroot.net/buildroot 
WORKDIR /root/buildroot

RUN touch .config
RUN touch kernel.config
VOLUME /root/buildroot/dl
VOLUME /buildroot_output

CMD ["/bin/bash"]
