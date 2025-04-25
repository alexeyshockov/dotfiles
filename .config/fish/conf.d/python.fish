# pipx, uvx (uv tools)
fish_add_path -g "$HOME/.local/bin"

# pyenv
# 1. Shell integration is disabled, I use uv (via direnv) for most of the projects now
# 2. In some cases pyenv can conflict with direnv, but I haven't noticed such cases for the last months
set -gx PYENV_ROOT "$HOME/.pyenv"
set -gx PYENV_VIRTUALENV_DISABLE_PROMPT 1
fish_add_path -g "$PYENV_ROOT/bin"
#has pyenv            && status is-interactive && pyenv init -            | source
#status is-interactive && pyenv init -            | source
#has pyenv-virtualenv && status is-interactive && pyenv virtualenv-init - | source
#status is-interactive && pyenv virtualenv-init - | source
#source ~/.config/fish/vendor/pyenv-virtualenv.fish
