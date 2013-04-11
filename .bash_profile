unset PROMPT_COMMAND

export LANG="en_US.UTF-8"
# All variables below may be setted by LC_ALL.
export LC_COLLATE="C"
export LC_CTYPE="UTF-8"
export LC_MESSAGES="C"
export LC_MONETARY="C"
export LC_NUMERIC="C"
export LC_TIME="C"

source liquidprompt/liquidprompt

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

PATH=${PATH/:\/usr\/local\/bin/}

PATH="/usr/local/bin:$PATH"
PATH="$(brew --prefix josegonzalez/php/php53)/bin:$PATH"

PATH="/usr/local/share/python:$PATH"

PATH="/usr/local/share/npm/bin:$PATH"

PATH=${PATH/\/usr\/sbin/\/usr\/local\/sbin:\/usr\/sbin}

export CLICOLOR="1"
export LSCOLORS="GxFxCxDxBxegedabagaced"

. `brew --prefix`/etc/profile.d/z.sh
