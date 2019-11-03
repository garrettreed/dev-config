#  Prompt
#PS1="\[\e[0;32m\]\W\[\e[m\\e[1;37m\] λ \[\e[m\]"
source ~/.bash-powerline

#  Generic bin paths
PATH=$PATH:/usr/local/bin
PATH=$PATH:/opt/local/bin
PATH=$PATH:/usr/local/sbin

#  App-specific Paths
PATH=$PATH:$HOME/.npm-global/bin
PATH=$PATH:$HOME/.composer/vendor/bin
PATH=$PATH:$HOME/Code/go/bin
PATH=$PATH:$HOME/.cabal/bin
PATH=$PATH:$HOME/.gem/ruby/2.6.0/bin
PATH=$PATH:/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin
PATH=/usr/local/opt/ruby/bin:$PATH

export PATH

#  Specific Paths
export NODE_PATH="/usr/local/lib/node_modules"
export GOPATH="/Users/$USER/Code/go/"
export GOROOT="/usr/local/go"

#  thefuck
eval $(thefuck --alias)

#  rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#  Util functions
function md () { mkdir -p "$@" && eval cd "\"\$$#\""; }

#  Set Default Editor
export EDITOR="/usr/bin/vim"

#  git Completion
if [ -f ~/.git-completion ]; then
  . ~/.git-completion
fi

#  Bash Completion
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

#  Colors
alias ls='ls -GFh'

#  Alias
alias ll='ls -al'
alias rm="echo Use 'del', or the full path i.e. '/bin/rm'"
alias del='rmtrash'

#  History
export HISTTIMEFORMAT="%d/%m/%y %T "

