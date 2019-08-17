#!/bin/bash

mkdir -p ${HOME}/.vim/autoload ${HOME}/.vim/bundle && \
curl -LSso ${HOME}/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/tpope/vim-sensible.git ${HOME}/.vim/bundle/vim-sensible
git clone https://github.com/vim-airline/vim-airline ${HOME}/.vim/bundle/vim-airline
git clone git://github.com/jpalardy/vim-slime.git ${HOME}/.vim/bundle/vim-slime
git clone git://github.com/JuliaEditorSupport/julia-vim.git ${HOME}/.vim/bundle/julia-vim
