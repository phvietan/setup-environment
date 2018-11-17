# Commands using export
export LESS=-R
export GREP_COLOR="1;32"
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video

# Commands using alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'

# Terminal
RESET="\[$(tput sgr0)\]"
WHITE="\[$(tput setaf 7)\]"
GREEN="\[$(tput setaf 10)\]"
YELLOW="\[$(tput setaf 3)\]"
export PS1="${GREEN}[\t] ${WHITE}SoulSilver ${YELLOW}\w${RESET}: "
