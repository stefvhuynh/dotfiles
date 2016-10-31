#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Setting up tumx...'
  set_dotfile '.tmux.conf'
}
