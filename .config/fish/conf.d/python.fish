# Actually there is no need for pyenv global init:
#  - global (system) Python is managed by Homebrew
#  - per project Python is manager by direnv
#has pyenv && status is-interactive && pyenv init - | source

# pipx
fish_add_path -g $HOME/.local/bin
