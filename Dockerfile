FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git curl wget python3 python3-doc python3-pip
RUN apt-get autoremove -y

RUN pip3 install sphinx==3.4.3 sphinx-rtd-theme==0.5.0 rstcheck
