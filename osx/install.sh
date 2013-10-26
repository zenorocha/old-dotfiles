#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Mac OS X ------------------------------------------------------------------
if [[ -L "$HOME/.osx" ]]; then
	msg_checking "osx"
else
	msg_install "osx" "ln -s $HOME/.dotfiles/osx/.osx $HOME/.osx"
	ln -s $HOME/.dotfiles/osx/.osx $HOME/.osx
fi