#!/usr/bin/env bash

if [ -n "${BASH_VERSION+x}" ]; then
	_shell=bash
elif [ -n "${ZSH_VERSION+x}" ]; then
	_shell=zsh
else
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid shell..."
fi
if [ -n "$_shell" ]; then
	_file="${XDG_CONFIG_HOME:-$HOME/.config}/fzf/fzf.$_shell"
	if [ -f "$_file" ]; then
		# shellcheck source=/dev/null
		source "$_file"
	fi
fi
