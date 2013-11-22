unset PROMPT_COMMAND

export LANG="en_US.UTF-8"
# All variables below may be setted by LC_ALL.
export LC_COLLATE="C"
export LC_CTYPE="UTF-8"
export LC_MESSAGES="C"
export LC_MONETARY="C"
export LC_NUMERIC="C"
export LC_TIME="C"

export EDITOR="nano"

source liquidprompt/liquidprompt

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

PATH=${PATH/:\/usr\/local\/bin/}

PATH="/usr/local/bin:$PATH"
PATH="$(brew --prefix josegonzalez/php/php53)/bin:$PATH"

PATH="/usr/local/share/npm/bin:$PATH"

PATH="$HOME/bin:$PATH"

PATH=${PATH/\/usr\/sbin/\/usr\/local\/sbin:\/usr\/sbin}

export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

export CLICOLOR="1"
export LSCOLORS="GxFxCxDxBxegedabagaced"

. `brew --prefix`/etc/profile.d/z.sh

alias gnetstat="sudo lsof -i -nP"
alias rm-broken-links="find -L . -type l | xargs -t -I {} rm {}"
alias ll='ls -alF'
alias la='ls -lAht'
