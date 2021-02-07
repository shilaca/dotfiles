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
done

# install anyenv
anyenvPath=~/.anyenv
if [ ! -e $anyenvPath ]; then
  git clone https://github.com/anyenv/anyenv $anyenvPaht
fi

# install ghq
ghqPath=~/.ghq
if [ ! -e $ghqPath ]; then
  git clone https://github.com/x-motemen/ghq $ghqPath
  cd $ghqPath
  make install
  cd $DOTFILES_PATH
fi

# install fzf
fzfPath=~/.fzf
if [ ! -e $fzfPath ]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  $fzfPath/install
fi

