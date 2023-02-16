# Alex's dotfiles

To get familiar with the concept, read [this introduction from GitHub](https://dotfiles.github.io). There are many `dotfiles` repos out there, but the most popular and inspiring one is probably [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles).

## Installation

First, install [Homebrew](http://brew.sh/) and follow `brew doctor`'s instructions (install XCode command line tools,..).

Then just clone this repo:

```shell
git clone --bare git@github.com:alexeyshockov/dotfiles.git ~/.dotfiles
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
```

### Homebrew apps

Restore everything using [bundle](https://github.com/Homebrew/homebrew-bundle) (see `~/Brewfile`):

```shell
brew bundle
```

### Fish

Change the default shell:

```shell
sudo sh -c 'echo /opt/homebrew/bin/bash >> /etc/shells'
sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'
chsh -s /opt/homebrew/bin/fish
```

### MacOS

Install [this custom RU/EN keyboard layout](https://github.com/tonsky/Universal-Layout).

Enable [Touch ID support for `sudo`](https://apple.stackexchange.com/a/306324/132816): just add `auth    sufficient    pam_tid.so` to `/etc/pam.d/sudo`.

### iTerm2

```shell
curl -L https://iterm2.com/shell_integration/fish -o ~/.iterm2_shell_integration.fish
```

`iTerm2` > `Make iTerm2 Default Term`


Color scheme (already installed): https://github.com/sindresorhus/iterm2-snazzy

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

Install [Package Control](https://packagecontrol.io), then install:
 - [Pretty JSON](https://github.com/dzhibas/SublimePrettyJson)

### Vim

Install all the plugins with `:PlugInstall`

### Docker (Lima/Colima)

```shell
limactl start --name=docker ~/lima-default.yaml
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
