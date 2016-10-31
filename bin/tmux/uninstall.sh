#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Tearing down tmux...'
  reset_dotfile '.tmux.conf'
}

main
