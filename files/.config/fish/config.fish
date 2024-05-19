set --export MODULAR_HOME "$HOME/.modular"

fish_add_path "$HOME/opt/homebrew/opt/curl/bin"
fish_add_path "$HOME/.local/share/mise/shims"
fish_add_path "$MODULAR_HOME/pkg/packages.modular.com_mojo/bin"
fish_add_path "$HOME/Library/Application Support/JetBrains/Toolbox/scripts"
fish_add_path "$HOME/bin"

source "$HOME/.cargo/env"
source "$HOME/.rye/env"

eval (/opt/homebrew/bin/brew shellenv)
$HOME/.local/bin/mise activate fish | source

if status is-interactive
  zoxide init fish | source
  starship init fish | source

  alias cat='bat'
  alias find='fd'
  alias grep='rg'
  alias ls='eza'
  alias od='hexyl'
  alias ps='procs'
  alias vim='nvim'

  alias ll='ls -al'

  alias cr=ghq-fzf
  alias fcd=cd-fzf
  alias fvim=vi-fzf

  switch (uname)
    case Darwin
      alias smerge='open -b com.sublimemerge'
  end
end

function cd-fzf
  set moveto ./$(ls -d */ | fzf --reverse)
  cd $moveto
end

function ghq-fzf
  set moveto $(ghq root)/$(ghq list | fzf --reverse)
  cd $moveto
end

function vi-fzf
  set moveto ./$(find . -d 1 --type f | fzf --reverse)
  vim $moveto
end
