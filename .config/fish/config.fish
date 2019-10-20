set PATH $HOME/.bin $HOME/.anyenv/bin $PATH
anyenv init - fish | source

# alias
alias vi='nvim'
alias vim='nvim'

alias cr='cd (ghq root)/(ghq list | peco)'
alias pcd='cd "(find . -type d | peco)"'

switch (uname)
case Darwin
  alias code='open -b com.microsoft.VSCODE'
  alias subl='open -b com.sublimetext.3'
  alias smerge='open -b com.sublimemerge'
  alias stree='open -b com.torusknot.SourceTreeNotMAS'
  alias idea='open -b com.jetbrains.intellij'
  alias mine='open -b com.jetbrains.rubymine'
  alias webstorm='open -b com.jetbrains.webstorm'
end

# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_stagedstate '+'
set __fish_git_prompt_char_stashstate '-'
set __fish_git_prompt_char_upstream_ahead '>'
set __fish_git_prompt_char_upstream_behind '<'
