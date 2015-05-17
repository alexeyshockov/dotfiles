# My OS X Settings

## On Fresh System

Install [Homebrew](http://brew.sh/), then run `brew doctor` for further instructions (XCode,..).

Install all programms over Homebrew with [bundle](https://github.com/Homebrew/homebrew-bundle) (from ~/Brewfile):
```
$ brew bundle
```

## Unatomated Things

### Scheduled tasks

Cron is used to schedule all the things (yes, I know about launchd).

```
$ crontab -l
0 12 * * * /Users/alexeyshockov/bin/brew-update-notifier
```
