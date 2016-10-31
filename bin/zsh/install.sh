#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Setting up zsh...'

  if ! grep -q $zsh_path $shells_path ; then
    echo "Appending $zsh_path to $shells_path"
    sudo -s "echo $zsh_path >> $shells_path"
  fi

  if [[ -f "$HOME/.zshrc" ]] ; then
    echo 'Moving current .zshrc to .zshrc.pre-dotfiles'
    mv "$HOME/.zshrc" "$HOME/.zshrc.pre-dotfiles"
  fi

  echo 'Copying custom .zshrc to .zshrc'
  cp "$root_path/.zshrc" "$HOME/.zshrc"

  bash "$bin_path/zsh/install_oh_my_zsh.sh"

  if [[ $(expr "$SHELL" : '.*/\(.*\)') != "zsh" ]] ; then
    if cmd_exists chsh ; then
      echo 'Changing shell to zsh'
      chsh -s "$zsh_path"
    fi
  fi
}

main
