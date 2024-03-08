FROM ubuntu:jammy

LABEL maintainer="info@andremeyering.de"

ENV LC_ALL="en_US.UTF-8"
ENV LC_CTYPE="en_US.UTF-8"


RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git curl wget python3 python3-doc python3-pip && \
    apt-get autoremove -y && \
    dpkg-reconfigure locales

COPY Pipfile.lock /opt/Pipfile.lock
COPY Pipfile /opt/Pipfile

RUN pip3 install pipenv && \
    cd /opt && pipenv install --system

WORKDIR /opt
