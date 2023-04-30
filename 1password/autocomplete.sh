#!/usr/bin/env bash

if [ "$(bash-or-zsh)" = bash ]; then
	# shellcheck source=/dev/null
	source <(op completion bash)
elif [ "$(bash-or-zsh)" = zsh ]; then
	eval "$(op completion zsh)"
	compdef _op op
fi
