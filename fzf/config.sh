#!/usr/bin/env bash

if [ -n "${BASH_VERSION+x}" ]; then
	_file="${XDG_CONFIG_HOME:-$HOME/.config}/fzf/fzf.bash"
	if [ -f "$_file" ]; then
		# shellcheck source=/dev/null
		source "$_file"
	fi
elif [ -n "${ZSH_VERSION+x}" ]; then
	_file="${XDG_CONFIG_HOME:-$HOME/.config}/fzf/fzf.zsh"
	if [ -f "$_file" ]; then
		# shellcheck source=/dev/null
		source "$_file"
	fi
fi
