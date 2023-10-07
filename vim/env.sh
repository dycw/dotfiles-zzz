#!/usr/bin/env bash

if [ -x "$(command -v vim)" ] && ! [ -x "$(command -v nvim)" ]; then
	export EDITOR=vim
fi
