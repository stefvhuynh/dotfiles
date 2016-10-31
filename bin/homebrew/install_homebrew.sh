#!/bin/sh

. ../utils.sh
. ../vars.sh


main()
{
  if ! cmd_exists brew ; then
    print 'Installing brew...'
    /usr/bin/ruby -e "$(curl -fsSL $brew_install_url)"
  fi

  brew update
  bash ./install_brew_formulae.sh
  bash ./install_brew_casks.sh
}

main
