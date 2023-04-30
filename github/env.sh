#!/usr/bin/env bash

_dir="$HOME/dotfiles/github/fpath"
if [ -d "$_dir" ]; then
	export FPATH="$_dir${FPATH:+:$FPATH}"
fi
