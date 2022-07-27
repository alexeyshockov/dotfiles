export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
# All variables below may be set by LC_ALL.
export LC_COLLATE="C"
export LC_CTYPE="UTF-8"
export LC_MESSAGES="C"
export LC_MONETARY="C"
export LC_NUMERIC="C"
export LC_TIME="C"

eval "$(/opt/homebrew/bin/brew shellenv)"

PATH="$HOMEBREW_PREFIX/opt/curl/bin:$PATH"
PATH="$HOMEBREW_PREFIX/opt/ruby/bin:$PATH"

export PATH
