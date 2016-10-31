#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Uninstalling oh my zsh...'

  if [[ -d "$HOME/.oh-my-zsh" ]]; then
    echo 'Removing .oh-my-zsh directory'
    rm -rf "$HOME/.oh-my-zsh"
  fi
}

main
