#!/bin/bash

DOTPATH=$(pwd)

for f in .??*
do
  [[ ${f} = ".DS_Store" ]] && continue
  [[ ${f} = ".git" ]] && continue
  [[ ${f} = ".gitignore" ]] && continue
  ln -snfv ${DOTPATH}/${f} ${HOME}/${f}
done
