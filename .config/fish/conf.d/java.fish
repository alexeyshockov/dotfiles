# jEnv
#
# To add Homebrew's one:
# $> jenv add /opt/homebrew/Cellar/openjdk/18.0.1.1
# $> jenv global 18

# Disabled due to:
#  - .jenv/bin duplication in $PATH
#  - overall slowness
# (see https://github.com/jenv/jenv/issues/341)
#
# Just use Homebrew's OpenJDK instead (see `brew info openjdk` for details)
#has jenv && jenv init - | source
