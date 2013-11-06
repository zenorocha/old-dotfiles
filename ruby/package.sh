#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Compass -------------------------------------------------------------------
if which compass &> /dev/null; then
	msg_ok "compass"
else
	msg_run "compass" "sudo gem install compass"
	sudo gem install compass
fi

# -- Jekyll --------------------------------------------------------------------
if which jekyll &> /dev/null; then
	msg_ok "jekyll"
else
	msg_run "jekyll" "sudo gem install jekyll"
	sudo gem install jekyll
fi