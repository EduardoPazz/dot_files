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
alias gw='./gradlew'
alias grhm='git reset --hard origin/master'
alias grhf='git reset --hard origin/forno'
alias glom='git pull origin master'
alias ntest='npm run test-unit --'

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

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/eduardopaz/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
