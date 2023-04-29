#!/usr/bin/env bash

if [ -x "$(command -v rg)" ]; then
	export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME:-$HOME/.config}/ripgreprc"
fi
