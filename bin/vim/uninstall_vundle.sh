#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Uninstalling vundle...'

  if [[ -d "$HOME/.vim" ]] ; then
    echo 'Moving .vim to .vim.dotfiles-{timestamp}'
    mv "$HOME/.vim" "$HOME/.vim.dotfiles-$(date +%Y%m%d%H%M%S)"
  fi

  if [[ -d "$HOME/.vim.pre-dotfiles" ]] ; then
    mv "$HOME/.vim.pre-dotfiles" "$HOME/.vim"
  fi
}

main
