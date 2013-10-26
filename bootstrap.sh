#!/bin/bash
source $HOME/.dotfiles/log.sh

# -- Hello :) ------------------------------------------------------------------
msg '									  ' 
msg '     | |     | |  / _(_) |           '
msg '   __| | ___ | |_| |_ _| | ___  ___  '
msg '  / _` |/ _ \| __|  _| | |/ _ \/ __| '
msg ' | (_| | (_) | |_| | | | |  __/\__ \ '
msg '  \__,_|\___/ \__|_| |_|_|\___||___/ '
msg '									  ' 
									
# -- Homebrew ------------------------------------------------------------------
if which brew &> /dev/null; then
	msg_checking "homebrew"
else
	msg_install "homebrew" "ruby -e '$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)'"
	ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
fi

# -- Git -----------------------------------------------------------------------
if which git &> /dev/null; then
	msg_checking "git"
else
	msg_install "git" "brew install git"
	brew install git
fi

# -- Dotfiles ------------------------------------------------------------------
# if [[ -d "$HOME/.dotfiles" ]]; then
# 	msg_checking "dotfiles"
# else
# 	msg_install "dotfiles" "git clone https://github.com/zenorocha/dotfiles.git $HOME/.dotfiles"
# 	git clone https://github.com/zenorocha/dotfiles.git $HOME/.dotfiles
# fi

# -- Dotfiles installers -------------------------------------------------------
# tells the shell script to exit if it encounters an error
set -e

# find the installers and run them iteratively
cd "$(dirname $)"/..
find . -name install.sh | while read installer ; do sh -c "${installer}" ; done