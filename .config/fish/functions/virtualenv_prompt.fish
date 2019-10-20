function virtualenv_prompt
  if [ -n "$VIRTUAL_ENV" ]
    printf ' in '
    set_color yellow
    printf '%s ' (basename "$VIRTUAL_ENV")
    set_color normal
  end
end
