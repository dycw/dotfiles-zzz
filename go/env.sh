#!/usr/bin/env bash

export GOROOT="$HOME/.go"
for _dir in "$GOROOT" /usr/local/go; do
	_bin="$_dir/bin"
	if [ -d "$_bin" ]; then
		export PATH="$_bin${PATH:+:$PATH}"
	fi
done
