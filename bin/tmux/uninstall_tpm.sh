#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Uninstalling tpm...'
  reset_dot_dir '.tmux'
}

main
