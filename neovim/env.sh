#!/usr/bin/env bash

if [ -x "$(command -v nvim)" ] && ! [ -x "$(command -v lvim)" ]; then
	export EDITOR=nvim
fi
