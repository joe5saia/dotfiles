#!/bin/bash

## Run as sudo 
## Downloads and builds python

ver=3.8.3

apt update
apt upgrade -y
apt install -y build-essential
apt install -y libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev libffi-dev uuid-dev tk-dev


cd /usr/local/share
wget https://www.python.org/ftp/python/${ver}/Python-${ver}.tar.xz
tar xf Python-${ver}.tar.xz
cd Python-${ver}
./configure --enable-optimizations
make -j 10
make altinstall
