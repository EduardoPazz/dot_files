# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


export EDITOR="nvim"
export QT_STYLE_OVERRIDE=kvantum

export PATH_SCRIPTS="$HOME/dot_files/scripts/"
export PATH_CONFIG="$PATH_SCRIPTS/config-script"
export PATH_ALACRITTY="$HOME.config/alacritty/alacritty.yml"
export PATH_I3="$HOME.config/i3/config"
export PATH_NEOVIM="$HOME.config/nvim/init.vim"
export PATH_PICOM="$HOME.config/picom/picom.conf"
export PATH_FISH="$HOME.config/fish/config.fish"
export PATH_PROFILE="$HOME.profile"
