#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Tearing down vim...'
  reset_dotfile '.vimrc'
  bash "$bin_path/vim/uninstall_vundle.sh"
}

main
