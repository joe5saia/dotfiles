#!/bin/bash

## Run as sudo
## Install latest version of vim and compile
apt install -y libncurses5-dev libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
python3-dev ruby-dev lua5.1 liblua5.1-dev libperl-dev git

apt remove -y vim vim-runtime gvim

cd /usr/local/share
git clone https://github.com/vim/vim.git
cd vim

/usr/local/share/vim/configure --with-features=huge \
        --enable-multibyte \
  	    --enable-rubyinterp=yes \
	      --enable-python3interp=yes \
	      --with-python3-config-dir=/usr/lib/python3.5/config \
	      --enable-perlinterp=yes \
	      --enable-luainterp=yes \
        --enable-gui=gnome2 \
        --enable-cscope \
 	      --prefix=/usr/local

make VIMRUNTIMEDIR=/usr/local/share/vim/vim81
make install

update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
update-alternatives --set editor /usr/local/bin/vim
update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
update-alternatives --set vi /usr/local/bin/vim
