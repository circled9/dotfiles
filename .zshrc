eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"
. /opt/homebrew/opt/asdf/libexec/asdf.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

path+=("$HOME/Library/Application Support/JetBrains/Toolbox/scripts")
path+=("$HOME/bin", $path)

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi
