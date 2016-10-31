#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Setting zsh as default shell...'

  if ! grep -q $zsh_path $shells_path ; then
    sudo -s "echo $zsh_path >> $shells_path"
  fi

  chsh -s $zsh_path
}

main
