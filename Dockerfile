FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt update && \
    apt install -y wget python3 python3-pip

RUN mkdir /usr/local/fastx-toolkit && \
    cd /usr/local/fastx-toolkit && \
    wget --quiet http://hannonlab.cshl.edu/fastx_toolkit/fastx_toolkit_0.0.13_binaries_Linux_2.6_amd64.tar.bz2 && \
    tar xvf fastx_toolkit_0.0.13_binaries_Linux_2.6_amd64.tar.bz2 && \
    mv bin/* /usr/local/bin/ && \
    fastx_quality_stats -h
