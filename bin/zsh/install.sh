#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Setting up zsh...'

  if ! grep -q $zsh_path $shells_path ; then
    echo "Appending $zsh_path to $shells_path"
    sudo -s "echo $zsh_path >> $shells_path"
  fi

  set_dotfile '.zshrc'

  bash "$bin_path/zsh/install_oh_my_zsh.sh"

  if [[ $(expr "$SHELL" : '.*/\(.*\)') != "zsh" ]] ; then
    if cmd_exists chsh ; then
      echo 'Changing shell to zsh'
      chsh -s "$zsh_path"
    fi
  fi
}

main
