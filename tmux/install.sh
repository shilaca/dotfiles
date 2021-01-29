#!/bin/bash
path=~/.tmux

if [ ! -e $path ]; then
  mkdir -p $path
fi

if [ ! -e $path/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

if [ ! -e $HOME/.tmux.conf ]; then
  ln -snfv $PWD/.tmux.conf $HOME/.tmux.conf
fi