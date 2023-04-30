#!/usr/bin/env bash

if [ -n "${BASH_VERSION+x}" ]; then
	eval "$(gh completion -s bash)"
elif [ -n "${ZSH_VERSION+x}" ]; then
	autoload -U compinit
	compinit -i
else
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid shell..."
fi
