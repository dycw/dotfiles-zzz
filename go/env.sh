#!/usr/bin/env bash

export GOROOT="$HOME/.go"
for _bin in "$GOROOT/bin" /usr/local/go/bin; do
	if [ -d "$_bin" ]; then
		export PATH="$_bin${PATH:+:$PATH}"
	fi
done
