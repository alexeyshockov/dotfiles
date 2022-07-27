fish_add_path -g $HOME/.composer/vendor/bin

[ -e ~/.phpbrew/phpbrew.fish ] && source ~/.phpbrew/phpbrew.fish || echo "PHPBrew is not installed"

# Not needed anymore
#export PHP_CS_FIXER_FUTURE_MODE=1

# Symfony Console completion... Not needed anymore, it's bundled (https://symfony.com/blog/new-in-symfony-5-4-console-autocompletion)
#eval "$(symfony-autocomplete)"
