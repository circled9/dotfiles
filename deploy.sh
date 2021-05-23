#!/bin/bash

if ! type git >/dev/null 2>&1; then
  echo 'git not found !'
  echo 'please install git command 🙇'
  exit
fi

if ! type anyenv >/dev/null 2>&1; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
fi

files=(".zshrc" ".zshenv" ".zprofile" ".bashrc" ".bash_profile" ".aliases")

for file in ${files[@]}
do
  if [ -e ~/${file} ]; then
    mv ~/${file} ./backup/${file}
    echo mv ~/${file} ./backup/${file}
  fi
  cp ./${file} ~/${file}
  echo cp ./${file} ~/${file}
done

exec $SHELL -l
