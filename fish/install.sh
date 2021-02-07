#!/bin/bash

confPath=~/.config
fishPath=$confPath/fish
if [ ! -e $fishPath ]; then
  mkdir -p $fishPath
fi

if [ ! -e $fishPath/config.fish ]; then
  ln -snfv $PWD/config.fish $fishPath/config.fish
fi


if [ ! -e $fishPath/functions/fisher.fish ]; then
  curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fi


confd=$fishPath/conf.d
if [ ! -e $confd ]; then
  mkdir -p $confd
fi
cd ./conf.d
for f in *.fish
do
  if [ ! -e $confd/"${f}" ]; then
    ln -snfv $PWD/"${f}" $confd/"${f}"
  fi
done
cd ..


functions=$fishPath/functions
cd ./functions
for f in {*.fish,*.bat}
do
  if [ ! -e $functions/"${f}" ]; then
    ln -snfv $PWD/"${f}" $functions/"${f}"
  fi
done
cd ..


starshipPath=/usr/local/bin
if [ ! -e $starshipPath ]; then
  curl -fsSL https://starship.rs/install.sh | bash
fi
starshipConf=starship.toml
starshipConfPath=$confPath/$starshipConf
if [ ! -e $starshipConfPath ]; then
  ln -snfv $PWD/$starshipConf $starshipConfPath
fi
