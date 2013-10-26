# #!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Config --------------------------------------------------------------------
if [[ -L "$HOME/.gitconfig" ]]; then
	msg_checking "gitconfig"
else
	msg_install "gitconfig" "ln -s $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig"
	ln -s $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig
fi

# -- Global Ignore -------------------------------------------------------------
if [[ -L "$HOME/.gitignore_global" ]]; then
	msg_checking "gitignore_global"
else
	msg_install "gitignore_global" "ln -s $HOME/.dotfiles/git/.gitignore_global $HOME/.gitignore_global"
	ln -s $HOME/.dotfiles/git/.gitignore_global $HOME/.gitignore_global
	git config --global core.excludesfile $HOME/.gitignore_global
fi