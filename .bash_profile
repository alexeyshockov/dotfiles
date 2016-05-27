unset PROMPT_COMMAND

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
# All variables below may be setted by LC_ALL.
export LC_COLLATE="C"
export LC_CTYPE="UTF-8"
export LC_MESSAGES="C"
export LC_MONETARY="C"
export LC_NUMERIC="C"
export LC_TIME="C"

export EDITOR="nano"
export PAGER="less"

# GitHub token for Homebrew
export HOMEBREW_GITHUB_API_TOKEN="0c572144910ae7b2ae6dda3ec4fc228b03506673"

# Better command prompt.
source ~/liquidprompt/liquidprompt

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
  . $LUNCHY_DIR/lunchy-completion.bash
fi

export GOPATH=$HOME/go

PATH="/usr/local/share/npm/bin:$PATH"
PATH="$HOME/bin:$PATH"
PATH="$HOME/.composer/vendor/bin:$PATH"
# Add /usr/local/sbin to $PATH by replacing.
PATH=${PATH/\/usr\/sbin/\/usr\/local\/sbin:\/usr\/sbin}
# For Go Homebrew package.
PATH=$PATH:/usr/local/opt/go/libexec/bin
PATH=$PATH:$GOPATH/bin

export PATH

export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

export CLICOLOR="1"
export LSCOLORS="GxFxCxDxBxegedabagaced"

# Symfony console autocomplete...
eval "$(symfony-autocomplete)"

# Aliases.
alias gnetstat="sudo lsof -i -nP"
alias rm-broken-links="find -L . -type l | xargs -t -I {} rm {}"
alias ll="ls -alFh"
alias la="ls -lAht"
alias grep="ggrep --color=always"
alias find="gfind"
alias git="hub"
alias g="git"
# Public IP address.
alias public-ip="dig +short myip.opendns.com @resolver1.opendns.com"
# Local IP address.
alias local-ip="ipconfig getifaddr en0"

# Maven options (useful for mvn camel:run).
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"

eval "$(fasd --init auto)"

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash



##
# My own commands.
##

# From https://developer.atlassian.com/blog/2015/02/ten-tips-for-wonderful-bash-productivity/
function col {
  awk -v col=$1 '{print $col}'
}

# From https://developer.atlassian.com/blog/2015/02/ten-tips-for-wonderful-bash-productivity/
function skip {
  n=$(($1 + 1))
  cut -d' ' -f$n-
}

# Generate random string with given length. 32 by default.
function rand {
  cat /dev/urandom | gtr -dc 'A-HJ-NP-Za-km-z2-9' | fold -w ${1:-32} | head -n 1
}

function timestamp {
  date '+%s'
}
