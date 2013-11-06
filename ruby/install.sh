#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Rbenv ---------------------------------------------------------------------
if which rbenv &> /dev/null; then
	msg_ok "rbenv"
else
	msg_run "rbenv" "git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv"
	git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv
fi

# -- Ruby build ----------------------------------------------------------------
if which ruby-build &> /dev/null; then
	msg_ok "ruby-build"
else
	msg_run "ruby-build" "git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build"
	git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build
fi