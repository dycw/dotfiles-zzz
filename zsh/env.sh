#!/usr/bin/env bash

if [ "$(bash-or-zsh)" = zsh ]; then
	export HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"
fi
