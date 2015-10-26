#   Prompt
PS1="\[\e[0;35m\]\W\[\e[m\\e[1;35m\] λ \[\e[m\]"

#   App-specific Paths
PATH=$PATH:/Applications/MAMP/bin/php/php5.6.7/bin
PATH=$PATH:$HOME/.rvm/bin
PATH=$PATH:$HOME/.composer/vendor/bin
PATH=$PATH:/opt/local/go/bin
PATH=$PATH:$HOME/Development/go/bin
PATH=$PATH:$HOME/.cabal/bin

#   Generic bin paths
PATH=$PATH:/usr/local/bin
PATH=$PATH:/opt/local/bin

export PATH

function md () { mkdir -p "$@" && eval cd "\"\$$#\""; }

alias griz='osascript ~/Sites/Grizzly/vpn-connect.scpt'

#   Specific Paths
export NODE_PATH="/usr/local/lib/node_modules"
export GOPATH="/Users/$USER/Development/go"

#   Set Default Editor
export EDITOR="/usr/bin/vim"

# git Completion
if [ -f ~/.git-completion ]; then
  . ~/.git-completion
fi

#  Colors
alias ls='ls -GFh'
