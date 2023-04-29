#!/usr/bin/env bash

if [ -x "$(command -v vim)" ] &&
	! [ -x "$(command -v nvim)" ] &&
	! [ -x "$(command -v lvim)" ]; then
	alias n='vim'
fi
