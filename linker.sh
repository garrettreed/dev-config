#!/usr/bin/env bash

function symlink {
  ln -nsf $1 $2
}

for file in dotfiles/.[^.]*; do
  if [[ $file != "dotfiles/.DS_Store" ]]; then
    path="$(pwd)/$file"
    base="$(basename $file)"
    target="$HOME/$base"

    echo "linking $base"

    rm -rf target
    symlink $path $target
  fi
done