#!/bin/sh

. ./bin/utils.sh

casks=(
  1password
  android-studio
  backblaze
  firefox
  flux
  google-chrome
  google-drive
  iterm2
  java
  slack
  visual-studio-code
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
