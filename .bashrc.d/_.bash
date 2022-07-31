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

eval "$(direnv hook bash)"

export SSH_AUTH_SOCK="$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
