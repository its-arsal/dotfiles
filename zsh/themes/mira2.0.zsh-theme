# Based on bira zsh theme
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n %{$fg[yellow]%}in%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%}%c%{$reset_color%}'

#local git_branch='$(git_prompt_info)'

local second_line='%B%(?..%{$fg[red]%})$%{$reset_color%}%b '

PROMPT="╭─${user_host} ${current_dir}
╰─${second_line}"
RPS1="${return_code}"

#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
#ZSH_THEME_GIT_PROMPT_SUFFIX=") %{$reset_color%}"

#ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[red]%}‹"
#ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"
