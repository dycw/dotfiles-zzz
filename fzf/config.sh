#!/usr/bin/env bash

file="${XDG_CONFIG_HOME:-$HOME/.config}/fzf/fzf.$(bash-or-zsh)"
if [ -f "$file" ]; then
	# shellcheck source=/dev/null
	source "$file"
fi
