#!/usr/bin/env bash

if [ -n "${BASH_VERSION+x}" ]; then
	_shell=bash
elif [ -n "${ZSH_VERSION+x}" ]; then
	_shell=zsh
else
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid shell..."
fi
if [ -n "$_shell" ]; then
	eval "$(starship init "$_shell")"
fi
