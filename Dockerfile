FROM ubuntu:14.04

RUN dpkg --add-architecture i386 && \
apt-get update -y && \
apt-get upgrade -y && \
apt-get install -y build-essential && \
apt-get install -y gcc-multilib && \
apt-get install -y libcmocka0:i386 && \
apt-get install -y libcmocka-dev:i386 && \
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
