#!/bin/bash

## Run as sudo
## Downloads and builds python

ver=3.9.5

sudo apt update
sudo apt upgrade -y
sudo apt install -y build-essential
sudo apt install -y libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev libffi-dev uuid-dev tk-dev


cd ~
wget https://www.python.org/ftp/python/${ver}/Python-${ver}.tar.xz
tar xf Python-${ver}.tar.xz
cd Python-${ver}
./configure --enable-optimizations
make -j 11
make altinstall
