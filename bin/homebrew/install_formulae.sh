#!/bin/sh

. ../utils.sh

# Yarn installs node for you.
formulae=(zsh git tmux vim yarn)

main()
{
  print 'Installing brew formulae...'

  for i in ${formulae[@]} ; do
    brew install $i
  done
}

main
