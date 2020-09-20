#!/bin/bash

path=~/.config/fish
if [ ! -e $path ]; then
  mkdir -p $path
fi

if [[ ! -e $path/config.fish ]]; then
  ln -snfv $PWD/config.fish $path/config.fish
fi


if [[ ! -e $path/functions/fisher.fish ]]; then
  curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fi


confd=$path/conf.d
if [[ ! -e $confd/ghq.fish ]]; then
  ln -snfv $PWD/conf.d/ghq.fish $confd/ghq.fish
fi


functions=$path/functions
cd ./functions
for f in *.fish
do
  ln -snfv $PWD/"${f}" $functions/"${f}"
done
cd ..