#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Node.JS -------------------------------------------------------------------
if which node &> /dev/null; then
	msg_checking "node"
else
	msg_install "node" "brew install node"
	brew install node
fi

# -- Bower ---------------------------------------------------------------------
if which bower &> /dev/null; then
	msg_checking "bower"
else
	msg_install "bower" "sudo npm install -g bower"
	sudo npm install -g bower
fi

# -- DocPad --------------------------------------------------------------------
if which docpad &> /dev/null; then
	msg_checking "docpad"
else
	msg_install "docpad" "sudo npm install -g docpad"
	sudo npm install -g docpad
fi

# -- Grunt ---------------------------------------------------------------------
if which grunt &> /dev/null; then
	msg_checking "grunt"
else
	msg_install "grunt" "sudo npm install -g grunt-cli"
	sudo npm install -g grunt-cli
fi

# -- JSHint --------------------------------------------------------------------
if which jshint &> /dev/null; then
	msg_checking "jshint"
else
	msg_install "jshint" "sudo npm install -g jshint"
	sudo npm install -g jshint
fi