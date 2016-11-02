# zsh configuration

editor='/usr/local/bin/vim'

# avit, aussiegeek, bureau, candy
ZSH_THEME='candy'
plugins=(git npm)

export EDITOR=$editor
export VISUAL=$editor
export ZSH="$HOME/.oh-my-zsh"

source "$ZSH/oh-my-zsh.sh"

alias ls='ls -AF'
alias vim=$editor
