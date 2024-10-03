# Actually there is no need for pyenv global init:
#  - global (system) Python is managed by Homebrew
#  - per project Python is manager by direnv
#has pyenv && status is-interactive && pyenv init - | source

# pipx
fish_add_path -g $HOME/.local/bin

# pyenv
set -gx PYENV_ROOT $HOME/.pyenv
fish_add_path -g $PYENV_ROOT/bin
pyenv init - | source
