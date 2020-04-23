#!/bin/bash

sudo apt install -y build-essential

sudo apt install -y libncurses-dev

git clone https://github.com/vim/vim.git

cd vim

git pull

cd src

make

sudo make install

source ~/.profile
