#!/bin/sh
source $HOME/.dotfiles/log.sh

if [[ -d "$HOME/.z" ]]; then
	msg_checking "z"
else
	msg_install "z" "git clone https://github.com/rupa/z.git $HOME/.z"
	git clone https://github.com/rupa/z.git $HOME/.z
fi