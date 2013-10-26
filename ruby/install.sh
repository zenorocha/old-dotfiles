#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Ruby Gems -----------------------------------------------------------------
if which gem &> /dev/null; then
	msg_checking "gem"
	sudo gem update --system
fi

# -- Compass -------------------------------------------------------------------
if which compass &> /dev/null; then
	msg_checking "compass"
else
	msg_install "compass" "sudo gem install compass"
	sudo gem install compass
fi

# -- Jekyll --------------------------------------------------------------------
if which jekyll &> /dev/null; then
	msg_checking "jekyll"
else
	msg_install "jekyll" "sudo gem install jekyll"
	sudo gem install jekyll
fi