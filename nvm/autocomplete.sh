#!/usr/bin/env bash

file="${NVM_DIR:-${XDG_CONFIG_HOME:-$HOME/.config}/nvm}/bash_completion"
if [ -f "$file" ]; then
	# shellcheck source=/dev/null
	source "$file"
fi
