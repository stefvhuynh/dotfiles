#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Tearing down vim...'

  if [[ -f "$HOME/.vimrc" ]] ; then
    echo 'Moving .vimrc to .vimrc.dotfiles-{timestamp}'
    mv "$HOME/.vimrc" "$HOME/.vimrc.dotfiles-$(date +%Y%m%d%H%M%S)"
  fi

  if [[ -f "$HOME/.vimrc.pre-dotfiles" ]] ; then
    mv "$HOME/.vimrc.pre-dotfiles" "$HOME/.vimrc"
  fi

  bash "$bin_path/vim/uninstall_vundle.sh"
}

main
