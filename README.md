# My OS X Settings

## On Fresh System

Install [Homebrew](http://brew.sh/).

Install all programms over Homebrew with [bundle](https://github.com/Homebrew/homebrew-bundle) (from ~/Brewfile):
```
brew bundle
```

## Unatomated Things

### Scheduled tasks

```
$ crontab -l
0 12 * * * /Users/alexeyshockov/bin/brew-update-notifier
```
