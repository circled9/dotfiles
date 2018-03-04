#!/bin/bash

if ! type git >/dev/null 2>&1; then
  echo 'git not found !'
  echo 'please install git command 🙇'
  exit
fi

if ! type anyenv >/dev/null 2>&1; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
fi

if [ -e '~/.bashrc' ]; then
  mv ~/.bashrc ~/.bashrc.`date "+%Y%m%d_%H%M%S"`
  echo '.bashrc backed up !'
fi

if [ -e '~/.bash_profile' ]; then
  mv ~/.bash_profile ~/.bash_profile.`date "+%Y%m%d_%H%M%S"`
  echo '.bash_profile backed up !'
fi

cp ./.bashrc ~/.bashrc
echo '.bashrc copied !'

cp ./.bash_profile ~/.bash_profile
echo '.bash_profile copied !'

exec $SHELL -l
