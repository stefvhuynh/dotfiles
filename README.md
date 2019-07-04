Dotfiles
========

This repo contains dotfiles and scripts for a complete development workstation.
It also contains scripts to set up new machines for professional as well as
personal use.

Installation
------------
To run the install scripts, run `bash bin/install.sh`. You will need to run it
from this project's root directory. You can run `sudo -s 'bash bin/install.sh`
to avoid password prompts during installation. Additionally, you can run any of
the scripts inside `bin/` by themselves if you want. You can also uninstall
everything by running `bash bin/uninstall.sh` or only uninstall the pieces you
don't want by running the proper scripts.

CLI Tools
---------
* xcode commmand line tools
* homebrew
* zsh
* git
* tmux
* vim
* node
* yarn
* n
* ack
* mongodb
* heroku
* java

Apps
----
* iTerm2
* Chrome
* Google Drive
* Backblaze
* 1Password
* Slack
* Android Studio
* Flux
* Visual Studio Code

Apps That Need to Be Installed Manually
---------------------------------------
* Xcode/Instruments

Visual Studio Code
------------------
Copy `.vscode/settings.json` and `.vscode/keybindings.json` to
`~/Library/Application Support/Code/User`

In the app, install the following extensions:

* Alphabetical Sorter
* ESLint
* GitLens
* macros
* npm Intellisense
* REST Client
* Vim
