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

export EDITOR="vim"
export PAGER="less"

# GitHub token for Homebrew
source ~/.bash_secrets

# Better command prompt.
# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export GOPATH=$HOME/go
export GOSUMDB=off

PATH="/usr/local/opt/curl/bin:$PATH"
PATH="/usr/local/share/npm/bin:$PATH"
PATH="/usr/local/opt/ruby/bin:$PATH"
PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
PATH="$HOME/bin:$PATH"
PATH="$HOME/.composer/vendor/bin:$PATH"
# Add /usr/local/sbin to $PATH by replacing.
PATH=${PATH/\/usr\/sbin/\/usr\/local\/sbin:\/usr\/sbin}
# For Go Homebrew package.
PATH=$PATH:/usr/local/opt/go/libexec/bin
PATH=$PATH:$GOPATH/bin

export PATH

export JAVA_HOME=`/usr/libexec/java_home`

export CLICOLOR="1"
export LSCOLORS="GxFxCxDxBxegedabagaced"

# Symfony console autocomplete...
eval "$(symfony-autocomplete)"

# Aliases.
alias cat="bat"
alias json_pp="python -m json.tool"
alias norg="gron --ungron"
alias ungron="gron --ungron"
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

alias docker-cleanup-containers='docker rm $(docker ps -a -q -f "status=exited")'
alias docker-cleanup-images='docker rmi $(docker images -q)'

# Maven options (useful for mvn camel:run).
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"

# For Docker builds
COMPOSER_AUTH_FILE=~/.composer/auth.json
if [ -f "$COMPOSER_AUTH_FILE" ]; then
    export COMPOSER_AUTH="$(cat $COMPOSER_AUTH_FILE)"
fi

export GPG_TTY=$(tty)

eval "$(fasd --init auto)"

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash



##
# My own commands.
##

function httpless {
    # `httpless example.org'
    http --pretty=all --print=hb "$@" | less -R;
}

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
