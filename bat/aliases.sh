#!/usr/bin/env bash

if [ -x "$(command -v bat)" ]; then
	alias cat='bat'
	alias catp='bat --style=plain'
	tf() { tail -f "$1" | bat --paging=never -l log; }
fi
