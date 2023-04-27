#!/usr/bin/env bash

if [ -x "$(command -v dust)" ]; then
	alias du='dust'
	__du_n() { dust -d "0"; }
	alias du0='__du_n 0'
	alias du1='__du_n 1'
	alias du2='__du_n 2'
	alias du3='__du_n 3'
	__watch_du_n() { watch -d -n 0.1 --color -- dust -d "$@"; }
	alias wdu0='__watch_du_n 0'
	alias wdu1='__watch_du_n 1'
	alias wdu2='__watch_du_n 2'
	alias wdu3='__watch_du_n 3'
fi
