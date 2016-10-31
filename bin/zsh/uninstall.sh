#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Tearing down zsh...'

  if grep -q $zsh_path $shells_path ; then
    echo "Removing $zsh_path from $shells_path"
    grep -v "^$zsh_path" $shells_path > shells_temp
    sudo -s mv shells_temp $shells_path
  fi

  reset_dotfile '.zshrc'

  bash "$bin_path/zsh/uninstall_oh_my_zsh.sh"

  if [[ $(expr "$SHELL" : '.*/\(.*\)') == "zsh" ]] ; then
    if cmd_exists chsh ; then
      echo 'Changing shell back to bash'
      chsh -s "$default_bash_path"
    fi
  fi
}

main
