#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Setting up vim...'

  if [[ -f "$HOME/.vimrc" ]] ; then
    echo 'Moving .vimrc to .vimrc.pre-dotfiles'
    mv "$HOME/.vimrc" "$HOME/.vimrc.pre-dotfiles"
  fi

  echo 'Copying custom .vimrc to .vimrc'
  cp "$root_path/.vimrc" "$HOME/.vimrc"

  bash "$bin_path/vim/install_vundle.sh"
}

main
