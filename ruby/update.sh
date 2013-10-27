#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Ruby Gems -----------------------------------------------------------------
if which gem &> /dev/null; then
	msg_run "gem" "sudo gem update --system"
	sudo gem update --system
fi