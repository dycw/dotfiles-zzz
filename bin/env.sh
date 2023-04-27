#!/usr/bin/env bash

# binaries
for _dir in "$HOME/dotfiles" "$HOME/.local"; do
	_bin="$_dir/bin"
	if [ -d "$_bin" ]; then
		export PATH="$_bin${PATH:+:$PATH}"
	fi
done
