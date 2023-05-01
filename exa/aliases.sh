#!/usr/bin/env bash

if [ -x "$(command -v exa)" ]; then
	__exa_base() { exa -F --group-directories-first "$@"; }
	__exa_short() { __exa_base -x "$@"; }
	ls() { __exa_short --git-ignore "$@"; }
	lsg() { __exa_short -a "$@"; }
	__exa_long() { __exa_base -ghl --git --time-style=long-iso "$@"; }
	__exa_long_default() { __exa_long -a --git-ignore "$@"; }
	l() { __exa_long_default "$@"; }
	ll() { __exa_long_default "$@"; }
	lg() { __exa_long -a "$@"; }

	if [ -x "$(command -v watch)" ]; then
		__watch_exa_base() {
			watch -d -n 0.1 --color -- \
				exa -aF --color=always --group-directories-first "$@"
		}
		__watch_exa_short() { __watch_exa_base -x "$@"; }
		wls() { __watch_exa_short --git-ignore "$@"; }
		wlsg() { __watch_exa_short -a "$@"; }
		__watch_exa_long() { __watch_exa_base -ghl --git --time-style=long-iso "$@"; }
		__watch_exa_long_default() { __watch_exa_long -a --git-ignore "$@"; }
		wl() { __watch_exa_long_default "$@"; }
		wll() { __watch_exa_long_default "$@"; }
		wlg() { __watch_exa_long -a "$@"; }
	fi
fi
