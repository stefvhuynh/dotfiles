#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Uninstalling homebrew...'
  echo 'Running homebrew uninstall script'
  ruby -e "$(curl -fsSL $brew_uninstall_url)"
}

main
