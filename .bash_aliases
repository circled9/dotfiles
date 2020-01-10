alias ll='ls -al'
alias ls='ls -G'
alias vi='vim'

case ${OSTYPE} in
  darwin*)
  alias code='open -b com.microsoft.VSCODE'
  alias subl='open -b com.sublimetext.3'
  alias smerge='open -b com.sublimemerge'
  alias stree='open -b com.torusknot.SourceTreeNotMAS'
  ;;
esac

function cd-fzf() {
    moveto=./$(ls -d */ | fzf --reverse)
    cd $moveto
}

function ghq-fzf() {
    moveto=$(ghq root)/$(ghq list | fzf --reverse)
    cd $moveto
}

function vi-fzf() {
    moveto=./$(find . -maxdepth 1 -type f | fzf --reverse)
    vim $moveto
}

alias fcd=cd-fzf
alias cr=ghq-fzf
alias fvi=vi-fzf
