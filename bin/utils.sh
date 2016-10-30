#!/bin/sh

cmd_exists()
{
  command -v $1 >/dev/null 2>&1
}

print()
{
  echo ; echo $1 ; echo
}
