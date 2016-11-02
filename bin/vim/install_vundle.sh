#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print "Installing vundle..."
  mv_dot_dir '.vim'

  echo 'Making new .vim directory'
  mkdir -p "$HOME/.vim/bundle"
  mkdir "$HOME/.vim/tmp"

  echo 'Cloning vundle'
  git clone --depth=1 $vundle_url "$HOME/$vundle_path"

  echo 'Installing vim plugins'
  vim +PluginInstall +qa
}

main
