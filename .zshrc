export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gnzh"

plugins=(
	git
	composer
	colored-man-pages
	jsontools
	nvm
	pip
	sudo
	systemd
	tmux
)

source $ZSH/oh-my-zsh.sh

#source $HOME/.aliases

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(fnm env --use-on-cd --shell zsh)"
