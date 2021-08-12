export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
# All variables below may be set by LC_ALL.
export LC_COLLATE="C"
export LC_CTYPE="UTF-8"
export LC_MESSAGES="C"
export LC_MONETARY="C"
export LC_NUMERIC="C"
export LC_TIME="C"

# GitHub token for Homebrew
source ~/.bash_secrets

PATH="$HOMEBREW_PREFIX/opt/curl/bin:$PATH"
PATH="$HOMEBREW_PREFIX/share/npm/bin:$PATH"
PATH="$HOMEBREW_PREFIX/opt/ruby/bin:$PATH"
PATH="$HOMEBREW_PREFIX/opt/make/libexec/gnubin:$PATH"
PATH="$HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin:$PATH"
PATH="$HOMEBREW_PREFIX/opt/findutils/libexec/gnubin:$PATH"
PATH="$HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin:$PATH"
PATH="$HOMEBREW_PREFIX/opt/gnu-units/libexec/gnubin:$PATH"

PATH="$HOME/bin:$PATH"

export GOPATH=$HOME/go
export GOSUMDB=off
# For Go Homebrew package.
PATH=$PATH:$HOMEBREW_PREFIX/opt/go/libexec/bin
PATH=$PATH:$GOPATH/bin

export PATH

export CLICOLOR="1"

export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1

export PHP_CS_FIXER_FUTURE_MODE=1

# Aliases.
alias help="tldr"

alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias cat="bat"
alias json_pp="python -m json.tool"
alias json_fx="fx"
alias json_q="jq"
alias norg="gron --ungron"
alias ungron="gron --ungron"
alias gnetstat="sudo lsof -i -nP"
alias rm-broken-links="find -L . -type l | xargs -t -I {} rm {}"
alias grep="ggrep --color=auto"
alias find="gfind"
alias g="git"
alias gs="git s"
alias gc="git c"
alias dc="docker-compose"

# Local & public IP addresses
alias publicip='dig @resolver4.opendns.com myip.opendns.com +short -4'
alias public-ip='dig @resolver4.opendns.com myip.opendns.com +short -4'
alias ip{4,}='dig @resolver4.opendns.com myip.opendns.com +short -4' # You can use ip4 or ip to get your ipv4
alias ip6='dig @ns1.google.com TXT o-o.myaddr.l.google.com +short -6' # https://unix.stackexchange.com/a/81699
alias localip="ipconfig getifaddr en0"
alias local-ip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

alias ping="prettyping --nolegend"

alias docker-cleanup-containers='docker rm $(docker ps -a -q -f "status=exited")'
alias docker-cleanup-images='docker rmi $(docker images -f "dangling=true" -q)'

# Maven options (useful for mvn camel:run).
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"

export GPG_TTY=$(tty)

source <(navi widget bash)

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash



##
# My own commands.
##

function mkcdir {
    mkdir -p -- "$1" && cd -P -- "$1"
}

function httpless {
    # `httpless example.org'
    http --pretty=all --print=hb "$@" | less -R;
}

# https://www.stefaanlippens.net/pretty-csv.html
function pretty_csv {
    perl -pe 's/((?<=,)|(?<=^)),/ ,/g;' "$@" | column -t -s, | less  -F -S -X -K
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
