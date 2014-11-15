# ZSH Theme - Based on macosky theme: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
# Further Enhanced with a better folder prompt using: http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$fg[green]%}$(collapse_pwd)%{$reset_color%} $(git_prompt_info)%{$reset_color%} $(rvm_prompt_info)
%{$fg[red]%}➜%{$reset_color%}  '
RPS1="${return_code}"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"

function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}
