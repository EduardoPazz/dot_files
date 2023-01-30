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
alias ga='git add'
alias gs='git status'
alias gc='git commit'
alias gco='git checkout'
alias gpp='git pull --prune'
alias gb='git branch'
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
alias find='fd'
alias maven_source="$HOME/scripts/maven_source.py"
alias vaicarai='rm -rf node_modules/ package-lock.json && npm i'
alias gcb='./gradlew clean build'

#######
# Plugins
#######

plugins=(asdf zsh-autosuggestions history-substring-search zsh-syntax-highlighting)

#######
# Setups
#######

# Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Starship
eval "$(starship init zsh)"
