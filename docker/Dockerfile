# VIM based Python IDE image on Ubuntu 20.04.
FROM ubuntu:20.04

LABEL \
    maintainer="Wing Chau <wing@devtography.com>" \
    description="VIM based Python IDE on Ubuntu 20.04." \
    python-verion="3.8.2" \
    license="Apache License 2.0"

ENV DEBIAN_FRONTEND=noninteractive

# Get the essential updates & packages
RUN apt-get update && apt-get upgrade -y && apt-get clean

# Install Python3.8 & relative packages
RUN apt-get update \
    && apt-get install -y python3 python3-dev python3-venv python3-pip \
    && pip3 install --upgrade pip \
    && apt-get remove -y python3-pip \
    && apt-get autoremove -y \
    && apt-get clean \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && pip install setuptools \
    && pip install pipenv pylint yapf

# Install & setup development tools
COPY ../.vimrc /root/.vimrc
RUN apt-get install -y build-essential cmake curl git git-flow vim \
    && git clone https://github.com/VundleVim/Vundle.vim.git \
    /root/.vim/bundle/Vundle.vim \
    && vim +PluginInstall +qall \
    && /root/.vim/bundle/YouCompleteMe/install.py --clangd-completer

CMD ["bash"]

