export PATH="$HOME/.composer/vendor/bin:$PATH"

# For Docker builds
COMPOSER_AUTH_FILE=~/.composer/auth.json
if [ -f "$COMPOSER_AUTH_FILE" ]; then
    export COMPOSER_AUTH="$(cat $COMPOSER_AUTH_FILE)"
fi

# Not needed anymore
#export PHP_CS_FIXER_FUTURE_MODE=1

# Symfony console autocomplete...
#eval "$(symfony-autocomplete)"
