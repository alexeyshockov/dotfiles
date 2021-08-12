# My Mac OS Settings

To get familiar with the concept, read [this introduction from GitHub](https://dotfiles.github.io). There are many `dotfiles` repos out there, but the most popular and inspiring one is probably [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles).

## On a Fresh System

Install [Homebrew](http://brew.sh/), then run `brew doctor` for further instructions (XCode,..).

Then change the default shell to Bash. Then clone the repo and move the files to the home directory...

```
$ cd /tmp
$ git clone --recursive git@github.com:alexeyshockov/dotfiles.git
$ shopt -s dotglob nullglob
$ mv dotfiles/* ~/
$ rm -rf dotfiles
```


Install programms over Homebrew with [bundle](https://github.com/Homebrew/homebrew-bundle) (from `~/Brewfile`):

```
$ brew bundle
```

Install [this keyboard layout](https://github.com/tonsky/Universal-Layout).

Enable [Touch ID support for `sudo`](https://dev.to/equiman/how-to-use-macos-s-touch-id-on-terminal-5fhg).

Link additional configuration to PHP:

```
$ ln -s ~/php.ini $(php --ini | grep "Scan for additional .ini files in" | cut -d ':' -f 2)/local.ini
```

Install required PHP extensions from `php-pecl-requirements.txt`.

Install PHP apps:

```
$ composer g install
```

Install Ruby apps:

```
$ gem update
$ gem install bundler
$ bundle install
```

Install Python apps:

```
$ pip3 install -r pip-requirements.txt
```

Finally, import GPG keys to the system.
