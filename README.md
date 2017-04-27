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
* Screenhero

Apps That Need to Be Installed Manually
---------------------------------------
* Xcode/Instruments

Pre-installed Tools
-------------------
You can create Automator workflows to launch applications or bring them to the
forefront. You can then assign the workflow to a global hotkey. This is useful
for quickly switching between apps you are using for development. An obvious
candidate would be to switch focus between iTerm2, Chrome, and mobile device
simulators. Additionally, you can use Automator to run AppleScripts for more
complex tasks, which you can then run with a global hotkey. An obvious candidate
for a more complex task would be to launch all applications needed for
development and configure them as needed (you can even run terminal commands).
Xcode comes with Instruments which you can use to monitor activity on your
machine, including file system changes and cpu usage and much more.
