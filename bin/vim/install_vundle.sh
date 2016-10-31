#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print "Installing vundle..."

  if [[ -d "$HOME/.vim" ]] ; then
    echo 'Moving .vim to .vim.pre-dotfiles'
    mv "$HOME/.vim" "$HOME/.vim.pre-dotfiles"
  fi

  echo 'Making new .vim directory'
  mkdir "$HOME/.vim"
  mkdir "$HOME/.vim/bundle"
  mkdir "$HOME/.vim/tmp"

  echo 'Cloning vundle'
  git clone --depth=1 $vundle_url "$HOME/$vundle_path"

  echo 'Installing vim plugins'
  vim +PluginInstall +qa
}

main
