#!/bin/bash

function getPath() {
	printf "Enter path to dotfiles dir -\n"

	read DOTFILES_PATH

	if [ -z $DOTFILES_PATH ]; then
		printf "Please don't leave path blank \n"
		getPath
	fi

}

getPath

ln -s $DOTFILES_PATH/.vimrc $HOME
ln -s $DOTFILES_PATH/.gvimrc $HOME
ln -s $DOTFILES_PATH/.zshrc $HOME
ln -s $DOTFILES_PATH/.tmux.conf $HOME
