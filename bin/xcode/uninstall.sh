#!/bin/sh

. ./bin/utils.sh
. ./bin/vars.sh

main()
{
  print 'Uninstalling xcode command line tools...'
  rm -rf "$xcode_command_line_tools_path"
}

main
