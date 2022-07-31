# See https://github.com/ibraheemdev/modern-unix

# Although some of these tools are not a direct replacement (do not support original options/arguments), 
# I want to push myself to use them!
if status is-interactive
    # GNU coreutils
    fish_add_path -g $HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin
    fish_add_path -g $HOMEBREW_PREFIX/opt/make/libexec/gnubin
    fish_add_path -g $HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin
    fish_add_path -g $HOMEBREW_PREFIX/opt/findutils/libexec/gnubin
    fish_add_path -g $HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin
    fish_add_path -g $HOMEBREW_PREFIX/opt/gnu-units/libexec/gnubin

	alias grep='ggrep --color=auto' # But ripgrep (`rg`) is even better
	alias find='gfind' # But `fd` is even better

	alias du='ncdu --color dark -rr -x --exclude .git --exclude node_modules'
	
	set -gx BAT_THEME 'Monokai Extended'
	alias cat='bat'

	alias df='duf'

	alias ps='procs'

	alias top='btop'
	alias htop='btop'

	alias sed='sd' # But Fish built-in string solves most of the needs!
end
