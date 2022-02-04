if has brew; then
    # See bash-completion@2 for details
    try_to_source "$(brew --prefix)/etc/profile.d/bash_completion.sh"
fi

# By default bash-completion@2 script tries to load:
#    ~/.config/bash_completion first,
#    global config then,
#    ~/.bash_completion in the end
# So we just add some more after all of that
source_everything_in ~/.bash_completion.d
