# Alex's dotfiles

To get familiar with the concept, read [this introduction from GitHub](https://dotfiles.github.io). There are many `dotfiles` repos out there, but the most popular and inspiring one is probably [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles).

## Installation

First, install [Homebrew](http://brew.sh/) and follow `brew doctor`'s instructions (install XCode command line tools,..).

Then just clone this repo:

```shell
git clone --bare git@github.com:alexeyshockov/dotfiles.git ~/.dotfiles
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
```

### Default shell

Fish is currently my login shell of choice. It's important to install/set if first, before installing other deps, so Homebrew installs completions for the right shell.

```shell
brew install bash fish
# And change the default shell
sudo sh -c 'echo /opt/homebrew/bin/bash >> /etc/shells'
sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'
chsh -s /opt/homebrew/bin/fish
```

### Homebrew apps

Restore everything using [bundle](https://github.com/Homebrew/homebrew-bundle) (see `~/Brewfile`):

```shell
brew bundle
```

### MacOS

Install [this custom RU/EN keyboard layout](https://github.com/tonsky/Universal-Layout).

Enable [Touch ID support for `sudo`](https://apple.stackexchange.com/a/306324/132816): just add the line below to `/etc/pam.d/sudo`.

```
auth    sufficient    pam_tid.so
```

### Exclude directories from Spotlight / search

`Siri & Spotlight` > `Spotlight Privacy` > ...

### iTerm2

`iTerm2` > `Make iTerm2 Default Term`

Color scheme (already installed): https://github.com/sindresorhus/iterm2-snazzy

#### Settings
1. open iTerm for the first time, go to `General` > `Settings`, enable `Load settings from a custom folder or URL`
2. close the app
3. revert autaically saved changes with `dotfiles checkout ../.config/iterm2`


#### Shell integration
```shell
curl -L https://iterm2.com/shell_integration/fish -o ~/.iterm2_shell_integration.fish
```

### Touch ID for remote `sudo`

In the `~/.ssh/config` for the server:

```
Host ...
    ForwardAgent yes
```

And on the server itself:

```shell
sudo apt install libpam-ssh-agent-auth
sudo echo "Defaults env_keep += SSH_AUTH_SOCK" > /etc/sudoers.d/ssh-agent
```

+ add `auth sufficient pam_ssh_agent_auth.so file=~/.ssh/authorized_keys` to `/etc/pam.d/sudo`

### Sublime Text

Install [Package Control](https://packagecontrol.io), after that all the packages should be synched automatically...

### ~~Vim~~ Amp

~~Install all the plugins with `:PlugInstall`~~ Just use it

### Docker (Lima/Colima)

```shell
limactl start --name=default ~/lima-default.yaml
```

```shell
limactl start --name=docker ~/lima-docker.yaml
docker context create lima-docker --docker "host=unix://.../sock/docker.sock"
docker context use lima-docker
```

#### BuildKit

```shell
docker buildx create --name uno --node local --driver=docker-container --bootstrap --use lima-docker
```

### Rust

Install Rust dev tools by using:

```shell
rustup-init
```

### PHP

To link additional (local) configuration:

```shell
ln -s ~/.config/php.ini $(php --ini | grep "Scan for additional .ini files in" | cut -d ':' -f 2 | sed -e 's/^[[:space:]]*//')/local.ini
```

Install global apps:

```shell
composer g install
```

(C extensions should be installed manually using PECL, see `php-pecl-requirements.txt`).

### Choosy rules

Just link the ruleset to `~/Library/Application Support/Choosy/behaviours.plist` (import/export is not implemented at the moment, unfortunately).
