# Replaced by zoxide below
#has jump && status is-interactive && jump shell fish --bind=z | source

has zoxide && status is-interactive && zoxide init fish | source
