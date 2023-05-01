#!/usr/bin/env bash

if [ -x "$(command -v brew)" ]; then
	_bin="$(brew --prefix)/bin"
	if [ -d "$_bin" ]; then
		export PATH="$_bin${PATH:+:$PATH}"
	fi
fi
