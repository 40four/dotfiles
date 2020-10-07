#!/bin/bash

sudo apt install zsh

git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
chsh -s $(which zsh)

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $HOME/.zshrc
