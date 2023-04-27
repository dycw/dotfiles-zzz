#!/usr/bin/env bash

if [ -x "$(command -v nvim)" ] && ! [ -x "$(command -v lvim)" ]; then
	alias n='nvim'
fi
