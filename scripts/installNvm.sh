#!/bin/bash

#Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash

#Reload config
source $HOME/.bashrc

#Install latest node
nvm install node
