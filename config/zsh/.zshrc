#######
# Env Vars
#######

export DOCKER_CLIENT_TIMEOUT=120
export COMPOSE_HTTP_TIMEOUT=120
export ZSH="$HOME/.oh-my-zsh"
. ~/.asdf/plugins/java/set-java-home.zsh


#######
# Aliases
#######
alias gs='git status'
alias gl='git log --oneline --graph'
alias cp='cp -vi'
alias mv='mv -vi'
alias rm='rm -vi'
alias b='bat'
alias e='exa -Fh'
alias ea='exa -Fha'
alias el='exa -Fhl'
alias eal='exa -Fhal'
alias rg='rg -S'
alias v='nvim'

#######
# Plugins
#######

plugins=(
	aliases
	asdf
	brew
	colored-man-pages
	cp
	dirhistory
	gh
	git
	history-substring-search
	vi-mode
	zsh-autosuggestions
	zsh-syntax-highlighting
)

#######
# Setups
#######

# Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Starship
eval "$(starship init zsh)"
