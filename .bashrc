export PYENV_ROOT="$HOME/.anyenv/envs/pyenv"
export PIPENV_VENV_IN_PROJECT=true

export PATH="$HOME/.anyenv/bin:$HOME/.cargo/bin:$HOME/go/1.16.4/bin:$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/bin:$PATH"

eval "$(pyenv init --path)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(anyenv init -)"
eval "$(starship init bash)"

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi
