# See https://github.com/ibraheemdev/modern-unix

# Although some of these tools are not a direct replacement (do not support original options/arguments),
# I want to push myself to use them!
if status is-interactive
    # GNU coreutils in Rust!
    fish_add_path -g $HOMEBREW_PREFIX/opt/uutils-coreutils/libexec/uubin
    fish_add_path -g $HOMEBREW_PREFIX/opt/make/libexec/gnubin
    fish_add_path -g $HOMEBREW_PREFIX/opt/grep/libexec/gnubin # But ripgrep (`rg`) is even better
    fish_add_path -g $HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin # But `sd` is even better (or Fish's built-in `string`)
    fish_add_path -g $HOMEBREW_PREFIX/opt/findutils/libexec/gnubin # But `fd` is even better
    fish_add_path -g $HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin
    fish_add_path -g $HOMEBREW_PREFIX/opt/gnu-units/libexec/gnubin

	set -gx BAT_THEME 'Monokai Extended'
#	alias cat='bat'

    alias du='ncdu --color dark -rr -x --exclude .git --exclude node_modules'
	alias df='duf'

	alias ps='procs'

	alias top='btop'
	alias htop='btop'
end
