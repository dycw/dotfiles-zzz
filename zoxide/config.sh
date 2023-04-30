#!/usr/bin/env bash

if [ -x "$(command -v zoxide)" ] && [ -x "$(command -v fzf)" ]; then
	if [ -n "${BASH_VERSION+x}" ]; then
		_shell=bash
	elif [ -n "${ZSH_VERSION+x}" ]; then
		_shell=zsh
	else
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid shell..."
	fi
	if [ -n "$_shell" ]; then
		eval "$(zoxide init "$_shell" --cmd j --hook prompt)"
	fi
fi
