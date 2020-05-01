#!/bin/bash

mkdir -p ~/.vim/autoload

mkdir  ~/.vim/.swp
mkdir  ~/.vim/.backup
mkdir  ~/.vim/.undo

git clone git@github.com:junegunn/vim-plug.git

cd vim-plug

#ln -s ./plug.vim ~/.vim/autoload/

rsync ./plug.vim ~/.vim/autoload
sudo rsync ./plug.vim /usr/local/share/vim/vim82/autoload

#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#source ~/.vim/autoload/plug.vim

#vim -N -u NONE -n -c "PlugInstall"
