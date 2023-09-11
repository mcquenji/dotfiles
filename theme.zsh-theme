ZSH_THEME_GIT_PROMPT_PREFIX=" [%{%B%F{blue}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%F{green}%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Uses "#" instead of "»" when running with elevated privileges
PROMPT="%{%B%F{blue}%}%n@%m%{${fg_bold[red]}%} %{${fg[green]}%}%3~ %{$reset_color%}%{%F{green}%$(git_prompt_info)%{%f%k%b%}%{$reset_color%}%(0?. . %{${fg[red]}%}%? )%{${fg[blue]}%}»${reset_color} "

