#!/usr/bin/env bash

if [ -x "$(command -v lvim)" ]; then
	alias n='lvim'
	alias configlua='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/lvim/config.lua"'
fi
