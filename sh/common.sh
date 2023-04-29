#!/usr/bin/env bash

# gem
if [ -x "$(command -v gem)" ]; then
	_BIN="$(gem environment gemdir)/bin"
	export PATH="$_BIN${PATH:+:$PATH}"
fi

# hyperfine
if [ -x "$(command -v hyperfine)" ]; then
	alias time='hyperfine'
fi

# pyright
if [ -x "$(command -v pyright)" ]; then
	alias pyr='pyright'
	alias pyrw='pyright -w'
fi
