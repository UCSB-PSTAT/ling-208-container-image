FROM ucsb/jupyter-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN apt update && \
    apt install -y \
        git \
        wget \
        tcsh \
        gawk \
        tar \
        make && \
    apt-get clean

#RUN pip install <libraries>

USER $NB_USER
