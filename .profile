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


export PATH_SCRIPTS="$HOME/dot_files/scripts/"
export QT_STYLE_OVERRIDE="kvantum"
export EDITOR="nvim"

declare -A PATH_CONFIG

PATH_CONFIG[config]="$PATH_SCRIPTS/config"
PATH_CONFIG[alacritty]="$HOME.config/alacritty/alacritty.yml"
PATH_CONFIG[i3]="$HOME.config/i3/config"
PATH_CONFIG[neovim]="$HOME.config/nvim/init.vim"
PATH_CONFIG[picom]="$HOME.config/picom/picom.conf"

