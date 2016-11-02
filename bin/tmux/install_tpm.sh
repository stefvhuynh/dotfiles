#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Installing tpm...'
  mv_dot_dir '.tmux'

  echo 'Making new .tmux directory'
  mkdir -p "$HOME/.tmux/plugins"

  echo 'Cloning tpm'
  git clone --depth=1 $tpm_install_url "$HOME/$tpm_path"

  echo 'Installing tmux plugins'
  bash "$HOME/$tpm_install_script_path"
}

main
