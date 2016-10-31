#!/bin/sh

. ../utils.sh
. ../vars.sh

main()
{
  print 'Uninstalling homebrew...'
  ruby -e "$(curl -fsSL $brew_uninstall_url)"
}

main
