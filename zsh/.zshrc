USER="`id -un`"

# -- User Settings -------------------------------------------------------------
if [[ -f "$HOME/.dotfiles/settings.$USER" ]]; then
	source $HOME/.dotfiles/settings.$USER
fi

# -- Config --------------------------------------------------------------------
source $HOME/.dotfiles/zsh/config.sh

# -- User Config ---------------------------------------------------------------
if [[ -f "$HOME/.dotfiles/config.$USER" ]]; then
	source $HOME/.dotfiles/config.$USER
fi

export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom-dotfiles"

source $ZSH/oh-my-zsh.sh

# Disable auto correct
unsetopt correct_all
unsetopt correct

# Load all of the config files in ~/dotfiles/zsh/* that end in .zsh
for config_file ($HOME/.dotfiles/zsh/*.zsh) source $config_file