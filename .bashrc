#
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; PS1='[\[\e[3m\]\A\[\e[0m\]] \[\e[1;3m\]\u@\h\[\e[0m\]: \[\e[38;5;214m\]\w\[\e[38;5;245;3m\]${PS1_CMD1}\[\e[0m\] \[\e[38;5;33;1;3m\]~\[\e[38;5;33m\]>\[\e[0m\] '
source ~/.git-prompt.sh

neofetch
