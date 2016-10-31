#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Removing zsh as default shell...'
  grep -v "^$zsh_path" $shells_path > shells_temp
  sudo mv shells_temp $shells_path
  chsh -s $default_bash_path
}

main
