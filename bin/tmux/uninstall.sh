#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Tearing down tmux...'
  reset_dotfile '.tmux.conf'
  bash "$bin_path/tmux/uninstall_tpm.sh"
}

main
