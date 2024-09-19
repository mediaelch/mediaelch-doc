FROM ubuntu:24.04

LABEL maintainer="info@andremeyering.de"

ENV LC_ALL="C"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        git curl wget python3 python3-doc \
        python3-pip pipenv && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p $HOME/.config/pip/ && \
    echo "[global]\nbreak-system-packages = true" > $HOME/.config/pip/pip.conf

COPY Pipfile.lock /opt/Pipfile.lock
COPY Pipfile /opt/Pipfile

RUN cd /opt && pipenv install --system

WORKDIR /opt
