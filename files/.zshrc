export MODULAR_HOME="$HOME/.modular"

path=(
    /opt/homebrew/opt/curl/bin
    $HOME/.local/share/mise/shims
    $MODULAR_HOME/pkg/packages.modular.com_mojo/bin
    $HOME/Library/Application Support/JetBrains/Toolbox/scripts
    $HOME/bin
    $path
)

source "$HOME/.cargo/env"
source "$HOME/.rye/env"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$($HOME/.local/bin/mise activate zsh)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# if [[ -o interactive ]]; then
#     exec fish
# fi
