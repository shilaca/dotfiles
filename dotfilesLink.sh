#!/bin/bash

set -eu

cwd=`dirname "${0}"`
DOTFILES_PATH=`(cd "${cwd}" && pwd)`

for f in .??*
do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitignore" ] && continue
    [ "$f" = ".DS_Store" ] && continue

    ln -snfv ${DOTFILES_PATH}/"${f}" ~/"${f}"
    ~/.anyenv/bin/anyenv init
    anyenv install --init
done

# install anyenv
anyenvPath=~/.anyenv
if [ ! -e $anyenvPath ]; then
  git clone https://github.com/anyenv/anyenv $anyenvPath
fi
anyenvPluginPath=$anyenvPath/plugins
if [ ! -e $anyenvPluginPath ]; then
  mkdir -p $anyenvPluginPath
fi
if [ ! -e $anyenvPluginPath/anyenv-update ]; then
  git clone https://github.com/znz/anyenv-update.git $anyenvPluginPath/anyenv-update
fi

# install ghq
# https://github.com/x-motemen/ghq
# install golang
# $ go get github.com/x-motemen/ghq

# ghqPath=~/.ghq
# if [ ! -e $ghqPath ]; then
#   git clone https://github.com/x-motemen/ghq $ghqPath
#   cd $ghqPath
#   make install
#   cd $DOTFILES_PATH
# fi

# install fzf
fzfPath=~/.fzf
if [ ! -e $fzfPath ]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  $fzfPath/install
fi

