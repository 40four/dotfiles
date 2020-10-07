#!/bin/bash

mkdir -p ~/.vim
mkdir -p ~/.vim/autoload

mkdir -p ~/.vim/.swp
mkdir -p ~/.vim/.backup
mkdir -p ~/.vim/.undo

sudo curl -fLo /usr/local/share/vim/vim82/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

exec bash
