#!/usr/bin/env bash

if [ -n "${ZSH_VERSION+x}" ]; then
	if [ -x "$(command -v brew)" ]; then
		_dir="$(brew --prefix)/share/zsh/zsh-completions"
		if [ -d "$_dir" ]; then
			export FPATH="$_dir${FPATH:+:$FPATH}"
		fi
	fi

	autoload -Uz compinit
	compinit
fi
