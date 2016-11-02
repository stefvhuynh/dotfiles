# zsh configuration

editor='/usr/local/bin/vim'

ZSH_THEME='avit'
plugins=(git npm)

alias ls='ls -AF'
alias vim=$editor

export EDITOR=$editor
export VISUAL=$editor
export ZSH="$HOME/.oh-my-zsh"

source "$ZSH/oh-my-zsh.sh"
