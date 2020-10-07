#!/bin/bash

#Install ZSH
sudo apt install zsh

#Install OhMyZsh
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

#Change default shell
sudo usermod -s $(which zsh) $USER

#Reload zsh config
source $HOME/.zshrc

#Install ZSH syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

