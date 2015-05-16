##########
# COLORS #
##########

std="%{[m%}"
red="%{[0;31m%}"
green="%{[0;32m%}"
yellow="%{[0;33m%}"
blue="%{[0;34m%}"
purple="%{[0;35m%}"
cyan="%{[0;36m%}"
grey="%{[0;37m%}"
white="%{[0;38m%}"
lred="%{[1;31m%}"
lgreen="%{[1;32m%}"
lyellow="%{[1;33m%}"
lblue="%{[1;34m%}"
lpurple="%{[1;35m%}"
lcyan="%{[1;36m%}"
lgrey="%{[1;37m%}"
Lwhite="%{[1;38m%}"

PS2='`%_> '       # secondary prompt, printed when the shell needs more information to complete a command.
PS3='?# '         # selection prompt used within a select loop.
PS4='+%N:%i:%_> ' # the execution trace prompt (setopt xtrace). default: '+%N:%i>'
if [ $UID != 0 ]; then
  local prompt_user="${lgreen}%n${std}"
else
  local prompt_user="${lred}%n${std}"
fi
local prompt_host="${lyellow}%m${std}"
local prompt_cwd="%B%40<..<%~%<<%b"
local prompt_time="${lblue}%D{%H:%M:%S}${std}"
local prompt_rv="%(?..${lred}%?${std} )"
local git_status='$(git_remote_status)'
local git_branch='$(git_prompt_info)'
local rbenv_prompt='${cyan}$(rbenv_prompt_info)${reset_color}'
#╭
PROMPT="${white}${prompt_user}${purple}@${std}${prompt_host}${virtualenv_prompt_info} ${prompt_cwd} ${git_branch}${rbenv_prompt} ${reset_color}%(!.#.$)
${purple}└> %{$reset_color%}"
# %(!.#.$) "
# ${reset_color} "
# ${lyellow}»%{${reset_color}%} "
RPROMPT="${prompt_rv}${prompt_time}"

# PROMPT='%{$fg[cyan]%}┌[%{$fg_bold[white]%}%n%{$reset_color%}%{$fg[cyan]%}☮%{$fg_bold[white]%}%M%{$re#set_color%}%{$fg[cyan]%}]%{$fg[white]%}-%{$fg[cyan]%}(%{$fg_bold[white]%}%~%{$reset_color%}%{$fg[cyan]%})$(git_prompt_info)
## └> % %{$reset_color%}'

# ZSH_THEME_GIT_SHOWUPSTREAM="verbose"
#ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[green]✚%{$fg_bold[white]%}$ahead%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg_bold[red]%}✗%{$fg_bold[white]%}$behind%{$reset_color%}%{$fg_bold[cyan]%}]"
# ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg_bold[green]✚%{$fg_bold[white]%}$ahead%{$reset_color%} %{$fg_bold[red]%}✗%{$fg_bold[white]%}$behind%{$reset_color%}%{$fg_bold[cyan]%}]"
# ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}[%{$reset_color%}%{$fg[white]%}%{$fg_bold[white]%}"
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[green]%}u+${ahead}"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="$fg_bold[red]u-${behind}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="u+$ahead-$behind"
ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE="$fg_bold[green]u="
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}[%{$reset_color%}%{$fg[cyan]%}%{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg_bold[cyan]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_CHANGED=" %{$fg[blue]%}+%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_bold[green]%}✔%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_PREFIX="("
#ZSH_THEME_GIT_PROMPT_SUFFIX=")"
# ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
# ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}fdsf"
# ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}●"
# ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}✖"
# ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}✚"
# ZSH_THEME_GIT_PROMPT_REMOTE=""
# ZSH_THEME_GIT_PROMPT_UNTRACKED="…"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔"
