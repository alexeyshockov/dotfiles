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

Link additional configuration to PHP:
```
$ ln -s ~/php.ini $(php --ini | grep "Scan for additional .ini files in" | cut -d ':' -f 2)/local.ini
```

Install PHP programms (over Composer):
```
$ composer g install
```

Install Ruby programms:
```
$ gem update
$ gem install bundler
$ bundle install
```

Install Python programms:
```
$ pip3 install --upgrade pip
$ pip3 install -r pip-requirements.txt
```

## Caps Lock remap

Use tekezo/Karabiner-Elements to remap `Caps Lock` button: http://stackoverflow.com/questions/127591/using-caps-lock-as-esc-in-mac-os-x
