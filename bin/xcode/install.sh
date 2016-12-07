#!/bin/sh

. ./bin/utils.sh

main()
{
  print 'Installing xcode command line tools...'
  xcode-select --install
  print 'You will need to install xcode through the app store'
}

main
