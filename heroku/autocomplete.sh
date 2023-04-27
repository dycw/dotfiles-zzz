#!/usr/bin/env bash

file="${XDG_CACHE_HOME:-$HOME/.cache}/heroku/autocomplete/bash_setup"
if [ "$(bash-or-zsh)" == bash ] && [ -f "$file" ]; then
	# shellcheck source=/dev/null
	source "$file"
fi
