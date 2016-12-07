#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Installing dotfiles...'
  bash "$bin_path/xcode/install.sh"
  bash "$bin_path/homebrew/install.sh"
  bash "$bin_path/vim/install.sh"
  bash "$bin_path/tmux/install.sh"
  bash "$bin_path/zsh/install.sh"
}

main
