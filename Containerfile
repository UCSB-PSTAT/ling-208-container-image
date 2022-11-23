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

RUN pip install gensim \
    scikit-learn \
    pytest \
    PTable \
    nltk \
    arpa \
    morfessor

USER $NB_USER
