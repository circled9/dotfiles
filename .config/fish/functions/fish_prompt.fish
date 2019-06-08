function fish_prompt
  set last_status $status

  if test $last_status -ne 0
    set_color red 
    printf '[%d] ' $last_status
    set_color normal
  end

  if test $SSH_TTY
    set_color red 
    printf '%d' $USER
    set_color normal
    set_color red 
    printf '%d' (prompt_hostname)
    set_color normal
  end

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s' (__fish_git_prompt)

  virtualenv_prompt

  printf '\n$ '
end
