#!/bin/bash
path=~/.vim

if [ ! -e $path ]; then
  mkdir -p $path
fi

if [[ ! -e $path/dein.toml ]]; then
    ln -snfv $PWD/dein.toml $path/dein.toml
fi

if [[ ! -e $HOME/.vimrc ]]; then
    ln -snfv $PWD/.vimrc $HOME/.vimrc
fi