eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init bash)"

if [ -x /opt/homebrew/bin/anyenv ]
then
  if ! [ -f /tmp/anyenv.bash.cache ]
  then
    anyenv init --no-rehash - bash > /tmp/anyenv.bash.cache
  fi
  source /tmp/anyenv.bash.cache
fi

export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
export PATH="$GOROOT/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"

export MODULAR_HOME="$HOME/.modular"
export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"

export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"
export PATH="$PATH:$HOME/bin"

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi
