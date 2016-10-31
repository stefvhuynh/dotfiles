#!/bin/sh

. ../utils.sh

# Yarn installs node for you. Mercurial is necessary for vim.
formulae=(zsh git tmux mercurial vim yarn)

main()
{
  print 'Installing brew formulae...'

  for i in ${formulae[@]} ; do
    echo "Installing $i"
    brew install $i
  done
}

main
