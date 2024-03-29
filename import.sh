#!/bin/bash

targets=(".zshrc" ".zshenv" ".zprofile" ".bashrc" ".bash_profile" ".aliases", ".gitconfig")
for target in ${targets[@]}
do
  if [ -e ~/${target} ]; then
    cp ~/${target} ./${target}
    echo cp ~/${target} ./${target}
  fi
done
