#!/usr/bin/env bash

if [ "$(bash-or-zsh)" = bash ]; then
	export HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/bash/history"
fi
