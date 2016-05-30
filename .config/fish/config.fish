set -x PATH $HOME/.anyenv/bin $PATH

set -x NDENV_ROOT $HOME/.anyenv/envs/ndenv
set -x PATH $HOME/.anyenv/envs/ndenv/shims $HOME/.anyenv/envs/ndenv/bin $PATH
ndenv rehash 2>/dev/null

set -x PYENV_ROOT $HOME/.anyenv/envs/pyenv
set -x PATH $HOME/.anyenv/envs/pyenv/shims $HOME/.anyenv/envs/pyenv/bin $PATH
pyenv rehash 2>/dev/null

set -x RBENV_ROOT $HOME/.anyenv/envs/rbenv
set -x PATH $HOME/.anyenv/envs/rbenv/shims $HOME/.anyenv/envs/rbenv/bin $PATH
rbenv rehash 2>/dev/null