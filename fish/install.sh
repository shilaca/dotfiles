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
cd ./conf.d
for f in *.fish
do
  if [[ ! -e $confd/"${f}" ]]; then
    ln -snfv $PWD/"${f}" $confd/"${f}"
  fi
done
cd ..


functions=$path/functions
cd ./functions
for f in *.fish
do
  if [[ ! -e $functions/"${f}" ]]; then
    ln -snfv $PWD/"${f}" $functions/"${f}"
  fi
done
cd ..