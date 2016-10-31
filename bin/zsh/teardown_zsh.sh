#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Removing zsh as default shell...'

  if grep -q $zsh_path $shells_path ; then
    grep -v "^$zsh_path" $shells_path > shells_temp
    sudo -s mv shells_temp $shells_path
  fi

  chsh -s $default_bash_path
}

main
