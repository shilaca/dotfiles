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

```.gitconfig
root = ~/Repositories
```
