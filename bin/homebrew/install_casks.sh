#!/bin/sh

. ../utils.sh

casks=(
  iterm2
  google-chrome
  google-drive
  backblaze
  1password
  slack
  android-studio
  flux
)

main()
{
  print 'Installing brew casks...'
  brew tap caskroom/cask

  for i in ${casks[@]} ; do
    echo "Installing $i"
    brew cask install $i
  done
}

main
