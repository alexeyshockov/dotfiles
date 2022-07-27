#
# To add Homebrew's one:
# $> jenv add /opt/homebrew/Cellar/openjdk/18.0.1.1
# $> jenv global 18
#

if has jenv
	jenv init - | source
	fish_add_path -g $HOME/.jenv/bin
end
