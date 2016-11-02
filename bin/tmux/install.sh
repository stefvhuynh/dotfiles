#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Setting up tumx...'
  set_dotfile '.tmux.conf'

  bash "$bin_path/tmux/install_tpm.sh"

  echo 'Sourcing .tmux.conf'
  tmux source "$HOME/.tmux.conf"
}

main
