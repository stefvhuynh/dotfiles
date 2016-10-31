#!/bin/sh

bin_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
root_path="${bin_path%/*}"
brew_install_url='https://raw.githubusercontent.com/Homebrew/install/master/install'
brew_uninstall_url='https://raw.githubusercontent.com/Homebrew/install/master/uninstall'
zsh_path='/usr/local/bin/zsh'
shells_path='/etc/shells'
default_bash_path='/bin/bash'
oh_my_zsh_install_url='https://github.com/robbyrussell/oh-my-zsh.git'
vundle_install_url="https://github.com/gmarik/Vundle.vim.git"
vundle_path=".vim/bundle/Vundle.vim"
