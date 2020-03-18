if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
eval "$(starship init bash)"
