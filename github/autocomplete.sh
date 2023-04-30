#!/usr/bin/env bash

if [ "$(bash-or-zsh)" = bash ]; then
	eval "$(gh completion -s bash)"
elif [ "$(bash-or-zsh)" = zsh ]; then
	autoload -U compinit
	compinit -i
fi
