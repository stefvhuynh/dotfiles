#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Installing oh my zsh...'
  echo 'Cloning oh my zsh'
  git clone --depth=1 $oh_my_zsh_install_url "$HOME/.oh-my-zsh"
}

main
