#!/usr/bin/env bash

if [ -n "${ZSH_VERSION+x}" ]; then
	export HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"
fi
