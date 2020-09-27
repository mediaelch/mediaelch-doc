FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git curl wget python3 python3-doc python3-pip
RUN apt-get autoremove -y

RUN pip3 install sphinx sphinx-autobuild sphinx_rtd_theme rstcheck
