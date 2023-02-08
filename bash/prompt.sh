#!/usr/bin/env bash
#
_RED="\[\033[0;31m\]"
_GREEN="\[\033[0;32m\]"
_YELLOW="\[\033[0;33m\]"
_BLUE="\[\033[0;34m\]"
_MAGENTA="\[\033[0;35m\]"
_CYAN="\[\033[0;36m\]"
_WHITE="\[\033[0;37m\]"
_BOLD_RED="\[\033[1;31m\]"
_BOLD_GREEN="\[\033[1;32m\]"
_BOLD_YELLOW="\[\033[1;33m\]"
_BOLD_BLUE="\[\033[1;34m\]"
_BOLD_MAGENTA="\[\033[1;35m\]"
_BOLD_CYAN="\[\033[1;36m\]"
_BOLD_WHITE="\[\033[1;37m\]"
_RESET="\[\033[0;m\]"

_get_branch() {
	git branch --color=never 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

_get_venv() {
	# source: https://stackoverflow.com/a/20026992
	if [[ -n "$VIRTUAL_ENV" ]]; then
		venv="$(basename "$(dirname "$VIRTUAL_ENV")")"
	else
		venv=''
	fi
	[[ -n "$venv" ]] && echo " $venv"
}

export PS1="$_GREEN\D{%Y-%m-%d}$_RESET $_BOLD_GREEN\D{%H:%M:%S}$_RESET$_GREEN\D{%p}$_RESET $_BOLD_CYAN\w$_RESET :$_CYAN\h$_RESET :\u$_BOLD_YELLOW\$(_get_branch)$_RESET\$(_get_venv)\n"
export PROMPT_DIRTRIM=5
export VIRTUAL_ENV_DISABLE_PROMPT=5
