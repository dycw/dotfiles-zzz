#!/usr/bin/env bash

if [ -x "$(command -v bat)" ]; then
	export MANPAGER="sh -c 'col -bx | bat -l man -p'"
fi
