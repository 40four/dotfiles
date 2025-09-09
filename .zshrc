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

source /opt/homebrew/Cellar/zsh-syntax-highlighting/0.8.0/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fnm
FNM_PATH="/Users/sean/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/sean/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi

eval "$(fnm env --use-on-cd --shell zsh)"
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"
