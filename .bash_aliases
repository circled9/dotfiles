alias ll='ls -al'
alias ls='ls -G'
alias vi='vim'

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
