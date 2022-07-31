# XCode tools (must go _before_ Homebrew base paths, otherwise brewed Git will be hidden)
set -gx PATH $(xcode-select --print-path)/usr/bin $PATH # By some reason fish_add_path() adds it _after_ Homebrew base paths below... 

# Homebrew base
/opt/homebrew/bin/brew shellenv | source

# Specific brewed apps

fish_add_path -g $HOMEBREW_PREFIX/opt/curl/bin
fish_add_path -g $HOMEBREW_PREFIX/opt/ssh-copy-id/bin
fish_add_path -g $HOMEBREW_PREFIX/opt/ruby/bin

# Personal things
fish_add_path -g $HOME/bin
