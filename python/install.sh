#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Python Package Index ------------------------------------------------------
if which pip &> /dev/null; then
	msg_checking "pip"
else
	msg_install "pip" "sudo easy_install pip"
	sudo easy_install pip
fi