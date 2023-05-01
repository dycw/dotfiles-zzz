#!/usr/bin/env bash

if [ -n "${BASH_VERSION+x}" ]; then
	eval "$(direnv hook bash)"
elif [ -n "${ZSH_VERSION+x}" ]; then
	eval "$(direnv hook zsh)"
fi
