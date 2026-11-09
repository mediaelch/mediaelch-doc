FROM python:3.14-trixie

LABEL maintainer="info@andremeyering.de"

ENV LC_ALL="C" \
    LANG="C" \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

WORKDIR /opt

# Install system dependencies (optional)
RUN apt-get update && \
	apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
        git curl wget gcc \
        libffi-dev && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip && \
	pip install pipenv

COPY Pipfile.lock /opt/Pipfile.lock
COPY Pipfile /opt/Pipfile

RUN cd /opt && pipenv install --deploy
