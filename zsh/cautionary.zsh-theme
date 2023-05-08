# shellcheck shell=bash disable=SC1090,SC1091,SC2016,SC2034

function _cautionary_theme_git_info() {
  [[ ! "$(git_prompt_info)" ]] && return

  echo -n "%{%F{${COLOR_FG_MUTED}}%}(%f"
  echo -n "$(git_prompt_info)$(git_prompt_status)%f"
  echo "%{%F{${COLOR_FG_MUTED}}%})%f "
}

_cautionary_dir="${0:A:h:h}"

source "${_cautionary_dir}/schemes/${CAUTIONARY_SCHEME:-github_dark}.env"

ZSH_THEME_GIT_PROMPT_CLEAN="%{%F{${COLOR_SUCCESS_FG}}%} \U2714"
ZSH_THEME_GIT_PROMPT_DIRTY=''
ZSH_THEME_GIT_PROMPT_PREFIX="%{%F{${COLOR_SPONSORS_FG}}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX='%f'

ZSH_THEME_GIT_PROMPT_ADDED="%{%F{${COLOR_SUCCESS_FG}}%} +"
ZSH_THEME_GIT_PROMPT_AHEAD="%{%F{${COLOR_ACCENT_FG}}%} \U2191"
ZSH_THEME_GIT_PROMPT_BEHIND="%{%F{${COLOR_ATTENTION_FG}}%} \U2193"
ZSH_THEME_GIT_PROMPT_DELETED="%{%F{${COLOR_DANGER_FG}}%} \U2717"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{%F{${COLOR_DANGER_FG}}%} \U26A0"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{%F{${COLOR_ATTENTION_FG}}%} \U2692"
ZSH_THEME_GIT_PROMPT_RENAMED="%{%F{${COLOR_SEVERE_FG}}%} ~"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{%F{${COLOR_SEVERE_FG}}%} ?"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{%F{${COLOR_ATTENTION_FG}}%} !"

PROMPT=''

source "${_cautionary_dir}/lib/zones.sh"

if cautionary_danger_zone; then
  PROMPT+='%{%F{${COLOR_DANGER_FG}}%}%n@%m%f '
  PROMPT+=$'\U1F480 '
elif cautionary_risk_zone; then
  PROMPT+='%{%F{${COLOR_ATTENTION_FG}}%}%n@%m%f '
  PROMPT+=$'\U1F480 '
else
  PROMPT+='%{%F{${COLOR_FG_MUTED}}%}%n@%m%f '
fi

PROMPT+='%{%F{${COLOR_ACCENT_FG}}%}%0~%f '

PROMPT+='$(_cautionary_theme_git_info)'
PROMPT+='%B%(?:%{%F{${COLOR_SUCCESS_FG}}%}➜:%{%F{${COLOR_DANGER_FG}}%}➜)%b%f '

unset _cautionary_dir
