if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

export PATH="/usr/local/opt/curl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/curl/lib"
export CPPFLAGS="-I/usr/local/opt/curl/include"

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
eval "$(starship init zsh)"
