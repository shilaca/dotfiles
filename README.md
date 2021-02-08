# dotfiles

```
~/dotfiles
```

## for mac

```bash
$ sh dotfilesLink.sh
```

# vscode

code command が必要になるので vscode を install して code command を install してから実行する。

```bash
# install
$ sh vscode/setup.sh

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
