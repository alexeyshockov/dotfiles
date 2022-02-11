# My Mac OS Settings

To get familiar with the concept, read [this introduction from GitHub](https://dotfiles.github.io). There are many `dotfiles` repos out there, but the most popular and inspiring one is probably [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles).

## On a Fresh System

Install [Homebrew](http://brew.sh/), then run `brew doctor` for further instructions (XCode,..).

Change the default shell to Bash:

```console
$ brew install bash
$ sudo sh -c 'echo /opt/homebrew/bin/bash >> /etc/shells'
$ chsh -s /opt/homebrew/bin/bash
```

Clone this repo and move the files to your home directory...

```console
$ cd /tmp
$ git clone --recursive git@github.com:alexeyshockov/dotfiles.git
$ shopt -s dotglob nullglob
$ mv dotfiles/* ~/
$ rm -rf dotfiles
```

Install all the programms over Homebrew using [bundle](https://github.com/Homebrew/homebrew-bundle) (see `~/Brewfile`):

```console
$ brew bundle
```

Install [this custom RU/EN keyboard layout](https://github.com/tonsky/Universal-Layout).

Enable [Touch ID support for `sudo`](https://dev.to/equiman/how-to-use-macos-s-touch-id-on-terminal-5fhg).

Finally, import GPG keys to the system.

### Clickhouse for M1 Macs

Currently no Homebrew packages are available, so just install the latest build manually:

```console
$ sudo curl -s --fail --output-dir /usr/local/bin -O 'https://builds.clickhouse.com/master/macos-aarch64/clickhouse' && sudo chmod a+x /usr/local/bin/clickhouse
```

Now Clickhouse client is available:

```console
$ clickhouse client --version
```

#### Yandex.Cloud certificates for managed Clickhouse

```console
$ sudo mkdir -p ~/.clickhouse-client /usr/local/share/ca-certificates/Yandex && sudo wget "https://storage.yandexcloud.net/cloud-certs/CA.pem" -O /usr/local/share/ca-certificates/Yandex/YandexInternalRootCA.crt && wget "https://storage.yandexcloud.net/mdb/clickhouse-client.conf.example" -O ~/.clickhouse-client/config.xml
```

### PHP

Link additional configuration to PHP:

```console
$ ln -s ~/php.ini $(php --ini | grep "Scan for additional .ini files in" | cut -d ':' -f 2)/local.ini
```

Install required PHP extensions from `php-pecl-requirements.txt`.

Configure PHP and install apps:

```console
$ ln -s ~/.config/php.ini /opt/homebrew/etc/php/8.0/conf.d/local.ini
$ composer g install
```

### Python

Install Python apps:

```console
$ pip3 install --upgrade pip
$ pip3 install -r pip-requirements.txt
```

Also for local projects take a look at `pyenv` and `direnv` integration: https://github.com/direnv/direnv/wiki/Python#pyenv

### .NET

To keep older amd64 SDKs on an Apple Silicon Mac, do the following:
- install the official .NET 5 SDK from MS website (it will be intalled)

...

About installation: https://docs.microsoft.com/en-us/dotnet/core/install/macos?tabs=netcore2x#download-and-manually-install

About notarization: https://docs.microsoft.com/en-us/dotnet/core/install/macos-notarization-issues

### Ruby

Install Ruby apps:

```console
$ gem update
$ gem install bundler
$ bundle install
```
