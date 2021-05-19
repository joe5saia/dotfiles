#!/bin/bash

ver=1.6.1

sudo apt-get install -y build-essential libatomic1 python gfortran perl wget m4 cmake pkg-config curl

#rm -rf julia
#git clone -b v${ver} git@github.com:JuliaLang/julia.git
cd julia
echo "MARCH=native" > Make.user
echo "prefix=/opt/julia${ver}" >> Make.user
sudo make -j 11 install

sudo ln -s /opt/julia${ver}/bin/julia /bin/julia
