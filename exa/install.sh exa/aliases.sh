#!/usr/bin/env bash

if [ -x "$(command -v exa)" ]; then
	__exa_base() { exa -aF --group-directories-first "$@"; }
	l() { __exa_base -ghl --time-style=long-iso "$@"; }
	alias ll='l'
	alias ls='__exa_base -x'

	if [ -x "$(command -v watch)" ]; then
		__watch_exa_base() {
			watch -d -n 0.1 --color -- \
				exa -aF --color=always --group-directories-first "$@"
		}
		wl() { __watch_exa_base -ghl --time-style=long-iso "$@"; }
		alias wll='wl'
		alias wls='__watch_exa_base -x'
	fi
fi
