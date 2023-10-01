#!/usr/bin/env bash

if [ -x "$(command -v nvim)" ] && ! [ -x "$(command -v lvim)" ]; then
	alias n='nvim'
	alias autocmdslua='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/lua/config/autocmds.lua"'
	alias keymapslua='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/lua/config/keymaps.lua"'
	alias lazylua='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/lua/config/lazy.lua"'
	alias optionslua='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/lua/config/options.lua"'
	alias cdplugins='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/lua"'
fi
