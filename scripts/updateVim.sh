#!/bin/bash

#Install dependancies
sudo apt install -y build-essential
sudo apt install -y libncurses-dev

#Clone Vim repo
git clone https://github.com/vim/vim.git
cd vim
git pull

#Compile source
cd src
make
sudo make install

cd ../..

#Reload shell
exec $SHELL
