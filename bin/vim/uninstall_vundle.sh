#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Uninstalling vundle...'
  reset_dot_dir '.vim'
}

main
