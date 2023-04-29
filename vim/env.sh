#!/usr/bin/env bash

if [ -x "$(command -v vim)" ] &&
	! [ -x "$(command -v nvim)" ] &&
	! [ -x "$(command -v lvim)" ]; then
	EDITOR=vim
	alias n='vim'
	alias configlua='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/lvim/config.lua"'
fi
