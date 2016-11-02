#!/bin/sh

cmd_exists()
{
  command -v $1 >/dev/null 2>&1
}

print()
{
  echo ; echo $1 ; echo
}

set_dotfile()
{
  if [[ -f "$HOME/$1" ]] ; then
    echo "Moving $1 to ${1}.pre-dotfiles"
    mv "$HOME/$1" "$HOME/${1}.pre-dotfiles"
  fi

  echo "Copying custom $1 to $1"
  cp "$root_path/$1" "$HOME/$1"
}

reset_dotfile()
{
  if [[ -f "$HOME/$1" ]] ; then
    echo "Moving $1 to ${1}.dotfiles-{timestamp}"
    mv "$HOME/$1" "$HOME/${1}.dotfiles-$(date +%Y%m%d%H%M%S)"
  fi

  if [[ -f "$HOME/${1}.pre-dotfiles" ]] ; then
    echo "Moving ${1}.pre-dotfiles back to $1"
    mv "$HOME/${1}.pre-dotfiles" "$HOME/$1"
  fi
}

mv_dot_dir()
{
  if [[ -d "$HOME/$1" ]] ; then
    echo "Moving $1 to ${1}.pre-dotfiles"
    mv "$HOME/$1" "$HOME/${1}.pre-dotfiles"
  fi
}

reset_dot_dir()
{
  if [[ -d "$HOME/$1" ]] ; then
    echo "Moving $1 to ${1}.dotfiles-{timestamp}"
    mv "$HOME/$1" "$HOME/${1}.dotfiles-$(date +%Y%m%d%H%M%S)"
  fi

  if [[ -d "$HOME/${1}.pre-dotfiles" ]] ; then
    mv "$HOME/${1}.pre-dotfiles" "$HOME/$1"
  fi
}
