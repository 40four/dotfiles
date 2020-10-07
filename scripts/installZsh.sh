#!/bin/bash

sudo apt install zsh

exec zsh

sudo usermod -s $(which zsh) $USER

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
