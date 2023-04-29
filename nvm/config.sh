#!/usr/bin/env bash

if [ -n "$NVM_DIR" ]; then
	file="$NVM_DIR/nvm.sh"
	if [ -f "$file" ]; then
		# shellcheck source=/dev/null
		source "$file"
	fi
fi
