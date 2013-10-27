#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Python Package Index ------------------------------------------------------
if which pip &> /dev/null; then
	msg_ok "pip"
else
	msg_run "pip" "sudo easy_install pip"
	sudo easy_install pip
fi