path+=("$HOME/bin", $path)

eval "$(starship init zsh)"

if [ -x /opt/homebrew/bin/anyenv ]
then
   if ! [ -f /tmp/anyenv.cache ]
   then
      anyenv init - --no-rehash > /tmp/anyenv.cache
      zcompile /tmp/anyenv.cache
   fi
   source /tmp/anyenv.cache
fi

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi
