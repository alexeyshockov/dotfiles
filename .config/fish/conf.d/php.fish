fish_add_path -g $HOME/.composer/vendor/bin

#
# PHPBrew
#
#set -gx PHPBREW_SET_PROMPT 0
#set -gx PHPBREW_RC_ENABLE 1 # https://github.com/phpbrew/phpbrew/wiki/Using-.phpbrewrc-files
## Run `phpbrew init` to generate the init script
#[ -e ~/.phpbrew/phpbrew.fish ] && source ~/.phpbrew/phpbrew.fish || echo "PHPBrew is not installed"
## Homebrew uses different directory on ARM (M1+) Macs
#set -gx PHPBREW_LOOKUP_PREFIX "$HOMEBREW_CELLAR:/usr/local"

# Not needed anymore
#export PHP_CS_FIXER_FUTURE_MODE=1

# Symfony Console completion... Not needed anymore, it's bundled (https://symfony.com/blog/new-in-symfony-5-4-console-autocompletion)
#eval "$(symfony-autocomplete)"
