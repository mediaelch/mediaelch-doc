FROM ubuntu:jammy

LABEL maintainer="info@andremeyering.de"

ENV LANG="en-US"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git curl wget python3 python3-doc python3-pip && \
    apt-get autoremove -y

COPY Pipfile.lock /opt/Pipfile.lock
COPY Pipfile /opt/Pipfile

RUN pip3 install pipenv && \
    cd /opt && pipenv install --system

WORKDIR /opt
