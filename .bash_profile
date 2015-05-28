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

# Better command prompt.
source ~/liquidprompt/liquidprompt

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

PATH="/usr/local/share/npm/bin:$PATH"
PATH="$HOME/bin:$PATH"
PATH="$HOME/.composer/vendor/bin:$PATH"
# Add /usr/local/sbin to $PATH by replacing.
PATH=${PATH/\/usr\/sbin/\/usr\/local\/sbin:\/usr\/sbin}

export PATH

export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

export CLICOLOR="1"
export LSCOLORS="GxFxCxDxBxegedabagaced"

# Z - Clever cd.
. `brew --prefix`/etc/profile.d/z.sh

# Symfony 2 autocompletion for console commands.
. ~/symfony2-autocomplete/symfony2-autocomplete.bash

# Aliases.
alias gnetstat="sudo lsof -i -nP"
alias rm-broken-links="find -L . -type l | xargs -t -I {} rm {}"
alias ll="ls -alFh"
alias la="ls -lAht"
alias grep="ggrep --color=always"
alias find="gfind"
alias git="hub"

# Maven options (useful for mvn camel:run).
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"

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
