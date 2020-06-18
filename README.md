# My OS X Settings

## On Fresh System

Clone repository first :)

```
$ cd /tmp
$ git clone --recursive git@github.com:alexeyshockov/dotfiles.git
$ mv dotfiles/* ~/
$ rm -rf dotfiles
```

Install [Homebrew](http://brew.sh/), then run `brew doctor` for further instructions (XCode,..).

Install programms over Homebrew with [bundle](https://github.com/Homebrew/homebrew-bundle) (from ~/Brewfile):

```
$ brew bundle
```

Install [this keyboard layout](https://github.com/tonsky/Universal-Layout).

Enable [settings sync for JetBrains products](https://www.jetbrains.com/help/idea/sharing-your-ide-settings.html#IDE_settings_sync).

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
