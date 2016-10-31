#!/bin/sh

. ../utils.sh
. ../vars.sh


main()
{
  print 'Installing homebrew...'

  if ! cmd_exists brew ; then
    echo 'Running homebrew install script'
    /usr/bin/ruby -e "$(curl -fsSL $brew_install_url)"
  fi

  brew update
  bash "$bin_path/homebrew/install_formulae.sh"
  bash "$bin_path/homebrew/install_casks.sh"
}

main
