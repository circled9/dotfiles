export MODULAR_HOME="$HOME/.modular"

export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="$HOME/.local/share/mise/shims:$PATH"
export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"
export PATH="$HOME/Library/Application Support/JetBrains/Toolbox/scripts:$PATH"
export PATH="$HOME/bin:$PATH"

source "$HOME/.cargo/env"
source "$HOME/.rye/env"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$($HOME/.local/bin/mise activate bash)"
eval "$(zoxide init bash)"
eval "$(starship init bash)"

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi
