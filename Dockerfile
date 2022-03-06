FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git curl wget python3 python3-doc python3-pip
RUN apt-get autoremove -y

# docutils needs to be hard-coded, see https://github.com/readthedocs/sphinx_rtd_theme/issues/1115
RUN pip3 install sphinx sphinx-rtd-theme docutils==0.16 rstcheck
