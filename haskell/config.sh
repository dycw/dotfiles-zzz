#!/usr/bin/env bash

file="$HOME/.ghcup/env"
if [ -f "$file" ]; then
	# shellcheck source=/dev/null
	source "$file"
fi
