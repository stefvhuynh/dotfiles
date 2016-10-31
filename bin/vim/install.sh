#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Setting up vim...'
  set_dotfile '.vimrc'
  bash "$bin_path/vim/install_vundle.sh"
}

main
