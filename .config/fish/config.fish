fish_add_path $HOME/.cargo/bin

set -gx GOENV_ROOT $HOME/.goenv
fish_add_path $GOENV_ROOT/bin
fish_add_path $GOROOT/bin

set -gx MODULAR_HOME $HOME/.modular
fish_add_path $MODULAR_HOME/pkg/packages.modular.com_mojo/bin

fish_add_path $HOME/bin


if status is-interactive
  eval (/opt/homebrew/bin/brew shellenv)

  starship init fish | source

  if test -x /opt/homebrew/bin/anyenv
    if not test -f /tmp/anyenv.cache
      anyenv init - --no-rehash > /tmp/anyenv.cache
    end
    source /tmp/anyenv.cache
  end
  

  alias ll='ls -al'
  
  alias cat='bat'
  alias find='fd'
  alias grep='rg'
  alias ls='exa'
  alias od='hexyl'
  alias ps='procs'
  alias vim='nvim'

  alias cr=ghq-fzf
  alias fcd=cd-fzf
  alias fvim=vi-fzf

  switch (uname)
    case Darwin
      alias code='open -b com.microsoft.VSCODE'
      alias smerge='open -b com.sublimemerge'
  end
end

function cd-fzf
  set moveto ./$(ls -d */ | fzf --reverse)
  cd $moveto
end

function ghq-fzf
  set $(ghq root)/$(ghq list | fzf --reverse)
  cd $moveto
end

function vi-fzf
  set moveto ./$(find . -d 1 --type f | fzf --reverse)
  vim $moveto
end
