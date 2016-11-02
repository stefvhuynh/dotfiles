#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Uninstalling dotfiles...'
  bash "$bin_path/homebrew/uninstall.sh"
  bash "$bin_path/vim/uninstall.sh"
  bash "$bin_path/tmux/uninstall.sh"
  bash "$bin_path/zsh/uninstall.sh"
}

main
