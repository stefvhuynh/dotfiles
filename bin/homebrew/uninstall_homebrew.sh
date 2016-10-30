#!/bin/sh

. ../utils.sh

brew_uninstall_url='https://raw.githubusercontent.com/Homebrew/install/master/uninstall'

main()
{
  print 'Uninstalling homebrew...'
  ruby -e "$(curl -fsSL $brew_uninstall_url)"
}

main
