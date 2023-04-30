#!/usr/bin/env bash

_bin="$HOME/.local/bin"
if [ -d "$_bin" ]; then
	export PATH="$_bin${PATH:+:$PATH}"
fi
if [ -x "$(command -v lvim)" ]; then
	export EDITOR=lvim
fi
