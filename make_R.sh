#!/bin/bash

## Run as sudo
## Installs R from CRAN repo

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
apt update
apt install -y r-base r-base-dev
