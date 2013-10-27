#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- ZSH -----------------------------------------------------------------------
if which zsh &> /dev/null; then
	msg_ok "zsh"
else
	msg_run "zsh" "brew install zsh"
	brew install zsh
fi

# Setting ZSH as your default shell
chsh -s /bin/zsh

# Backing up
if [[ -d "$HOME/.zshrc" || -f "$HOME/.zshrc" ]]; then
	mv $HOME/.zshrc $HOME/.zshrc_bkp
fi

# Linking ~/.zshrc to ~/.dotfiles/zsh/.zshrc
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc