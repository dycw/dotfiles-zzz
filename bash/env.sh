#!/usr/bin/env bash

if [ -n "${BASH_VERSION+x}" ]; then
	export HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/bash/history"
fi
