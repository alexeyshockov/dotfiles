if has brew; then
    # See bash-completion@2 for details
    try_to_source "$(brew --prefix)/etc/profile.d/bash_completion.sh"
fi
try_to_source "/etc/bash_completion"

source_everything_in ~/.bash_completion.d
