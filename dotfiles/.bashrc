#   Prompt
#PS1="\[\e[0;32m\]\W\[\e[m\\e[1;37m\] λ \[\e[m\]"
source ~/.bash_powerline.sh

#   App-specific Paths
PATH=$PATH:/Applications/MAMP/bin/php/php5.6.10/bin
PATH=$PATH:$HOME/.rvm/bin
PATH=$PATH:$HOME/.composer/vendor/bin
PATH=$PATH:$HOME/Development/go/bin
PATH=$PATH:$HOME/.cabal/bin
PATH=$PATH:/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin

#   Generic bin paths
PATH=$PATH:/usr/local/bin
PATH=$PATH:/opt/local/bin

export PATH

#   Alias
alias gpr="git pull --rebase"

#   Specific Paths
export NODE_PATH="/usr/local/lib/node_modules"
export GOPATH="/Users/$USER/Development/go/"

#   Util functions
function md () { mkdir -p "$@" && eval cd "\"\$$#\""; }

#   Log History
#export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

#   Set Default Editor
export EDITOR="/usr/bin/vim"

# git Completion
if [ -f ~/.git-completion ]; then
  . ~/.git-completion
fi

#  Bash Completion
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

#  Colors
alias ls='ls -GFh'

export NVM_DIR="/Users/Garrett/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.yarn/bin:$PATH"
