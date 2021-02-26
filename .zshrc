if [ -f ~/.aliases ]; then
  . ~/.aliases
fi


export PATH="$HOME/.anyenv/bin:$HOME/.cargo/bin:$HOME/go/1.16beta1/bin:$PATH"
eval "$(starship init zsh)"
eval "$(anyenv init -)"

