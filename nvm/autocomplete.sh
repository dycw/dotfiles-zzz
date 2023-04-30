#!/usr/bin/env bash

if [ -n "${BASH_VERSION+x}" ]; then
	_file="${NVM_DIR:-${XDG_CONFIG_HOME:-$HOME/.config}/nvm}/bash_completion"
	if [ -f "$_file" ]; then
		# shellcheck source=/dev/null
		source "$_file"
	fi
fi
