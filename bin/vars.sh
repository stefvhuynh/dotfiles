#!/bin/sh

bin_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
root_path="${bin_path%/*}"
brew_install_url='https://raw.githubusercontent.com/Homebrew/install/master/install'
brew_uninstall_url='https://raw.githubusercontent.com/Homebrew/install/master/uninstall'
zsh_path='/usr/local/bin/zsh'
shells_path='/etc/shells'
default_bash_path='/bin/bash'
oh_my_zsh_install_url='https://github.com/robbyrussell/oh-my-zsh.git'
vundle_install_url="https://github.com/VundleVim/Vundle.vim.git"
vundle_path=".vim/bundle/Vundle.vim"
tpm_install_url='https://github.com/tmux-plugins/tpm.git'
tpm_path=".tmux/plugins/tpm"
tpm_install_script_path=".tmux/plugins/tpm/scripts/install_plugins.sh"
xcode_command_line_tools_path="/Library/Developer/CommandLineTools"
