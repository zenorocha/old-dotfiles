#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Oh my ZSH -----------------------------------------------------------------
if [[ -d "$HOME/.oh-my-zsh" ]]; then
	msg_checking "oh-my-zsh"
else
	msg_install "oh-my-zsh" "git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh"
	git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
fi

# -- Plugins -------------------------------------------------------------------
if [[ -d "$HOME/.oh-my-zsh/custom-dotfiles/plugins" ]]; then
	msg_checking "oh-my-zsh plugins"
else
	msg_install "oh-my-zsh plugins" "ln -s $HOME/.dotfiles/oh-my-zsh/plugins $HOME/.oh-my-zsh/custom-dotfiles/"
	mkdir -p $HOME/.oh-my-zsh/custom-dotfiles
	ln -s $HOME/.dotfiles/oh-my-zsh/plugins $HOME/.oh-my-zsh/custom-dotfiles/
fi

# -- Themes --------------------------------------------------------------------
if [[ -d "$HOME/.oh-my-zsh/custom-dotfiles/themes" ]]; then
	msg_checking "oh-my-zsh themes"
else
	msg_install "oh-my-zsh themes" "ln -s $HOME/.dotfiles/oh-my-zsh/themes $HOME/.oh-my-zsh/custom-dotfiles/"
	ln -s $HOME/.dotfiles/oh-my-zsh/themes $HOME/.oh-my-zsh/custom-dotfiles/
fi