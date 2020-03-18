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

function nodenv-fzf() {
    nodenv versions | fzf --reverse | sed -e 's/* //g' | xargs nodenv local && nodenv version
}
function rbenv-fzf() {
    rbenv versions | fzf --reverse | sed -e 's/* //g' | xargs rbenv local && rbenv version
}
function pyenv-fzf() {
    pyenv versions | fzf --reverse | sed -e 's/* //g' | xargs pyenv local && pyenv version
}

alias fcd=cd-fzf
alias cr=ghq-fzf
alias fvi=vi-fzf
alias fjs=nodenv-fzf
alias frb=rbenv-fzf
alias fpy=pyenv-fzf
