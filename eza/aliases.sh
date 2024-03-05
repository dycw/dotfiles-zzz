#!/usr/bin/env bash

if [ -x "$(command -v eza)" ]; then
	__eza_base() { eza -F --group-directories-first "$@"; }
	__eza_short() { __eza_base -x "$@"; }
	ls() { __eza_short --git-ignore "$@"; }
	lsa() { __eza_short -a "$@"; }
	__eza_long() { __eza_base -ghl --git --time-style=long-iso "$@"; }
	__eza_long_default() { __eza_long -a --git-ignore "$@"; }
	l() { __eza_long_default "$@"; }
	ll() { __eza_long_default "$@"; }
	la() { __eza_long -a "$@"; }

	if [ -x "$(command -v watch)" ]; then
		__watch_eza_base() {
			watch -d -n 0.1 --color -- \
				eza -aF --color=always --group-directories-first "$@"
		}
		__watch_eza_short() { __watch_eza_base -x "$@"; }
		wls() { __watch_eza_short --git-ignore "$@"; }
		wlsa() { __watch_eza_short -a "$@"; }
		__watch_eza_long() { __watch_eza_base -ghl --git --time-style=long-iso "$@"; }
		__watch_eza_long_default() { __watch_eza_long -a --git-ignore "$@"; }
		wl() { __watch_eza_long_default "$@"; }
		wll() { __watch_eza_long_default "$@"; }
		wla() { __watch_eza_long -a "$@"; }
	fi
fi
