#!/bin/bash

mkdir -p ~/.vim

mkdir -p ~/.vim/autoload

mkdir -p ~/.vim/.swp
mkdir -p ~/.vim/.backup
mkdir -p ~/.vim/.undo

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

source ~/.vim/autoload/plug.vim

#vim -N -u NONE -n -c "PlugInstall"
