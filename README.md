# dotfiles

```
~/dotfiles
```

## for mac

```bash
$ sh dotfilesLink.sh
```

_golang を別途インストールする必要がある、fish に path の設定が書いてあるから途中まで実行したら一旦 fish の設定まで先にやったほうがいいかも_


# vscode

code command が必要になるので vscode を install して code command を install してから実行する。

**mac と win (wsl) とで path が違うので注意 (file を修正する)**

```bash
# install
# for mac
$ sh vscode/setup.sh
# for win (wsl)
$ sh vscode/setup.sh [user name (path name)]

# export extensions list
$ code --list-extensions > vscode/extensions
```

# fish

現状実行する前に fish shell を install する必要がある
https://github.com/fish-shell/fish-shell

```bash
$ cd fish
$ sh install.sh
```

## ghq の設定

brew とかで ghq, fzf を install して fisher でも入れる

```bash
$ fisher install jethrokuan/fzf
$ fisher install decors/fish-ghq
```

directory の設定
`~/.gitconfig` に追記
```.gitconfig
[ghq]
  root = ~/Repositories
```

# tmux

**shell の path が mac と win (wsl) で違うので修正する**

```bash
$ cd tmux
$ sh install.sh
```

plugin の install
```
$ tmux

# plugin の install
(prefix) + I

# plugin の update
(prefix) + U
```
