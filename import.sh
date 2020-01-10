#!/bin/bash

targets=(".zshrc" ".bashrc" ".bash_profile" ".bash_aliases")
for target in ${targets[@]}
do
  if [ -e ~/${target} ]; then
    cp ~/${target} ./${target}
    echo cp ~/${target} ./${target}
  fi
done
