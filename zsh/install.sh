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

# -- Oh my ZSH -----------------------------------------------------------------
if [[ -d "$HOME/.oh-my-zsh" ]]; then
	msg_ok "oh-my-zsh"
else
	msg_run "oh-my-zsh" "git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh"
	git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
fi

# -- Themes --------------------------------------------------------------------
# if [[ -d "$HOME/.themes" ]]; then
# 	msg_ok "themes"
# else
# 	msg_run "themes" "git clone https://github.com/zenorocha/dracula-theme.git $HOME/.themes"
# 	git clone https://github.com/zenorocha/dracula-theme.git $HOME/.themes
# fi

# -- Link Themes ---------------------------------------------------------------
# if [[ -L "$HOME/.oh-my-zsh/custom-dotfiles/themes" ]]; then
# 	msg_ok "oh-my-zsh themes"
# else
# 	msg_run "oh-my-zsh themes" "ln -s $HOME/.themes/zsh $HOME/.oh-my-zsh/custom-dotfiles/themes"
# 	ln -s $HOME/.themes/zsh $HOME/.oh-my-zsh/custom-dotfiles/themes
# fi

# -- Plugins -------------------------------------------------------------------
if [[ -L "$HOME/.oh-my-zsh/custom-dotfiles/plugins" ]]; then
	msg_ok "oh-my-zsh plugins"
else
	msg_run "oh-my-zsh plugins" "ln -s $HOME/.dotfiles/zsh/plugins $HOME/.oh-my-zsh/custom-dotfiles/plugins"
	mkdir -p $HOME/.oh-my-zsh/custom-dotfiles
	ln -s $HOME/.dotfiles/zsh/plugins $HOME/.oh-my-zsh/custom-dotfiles/plugins
fi