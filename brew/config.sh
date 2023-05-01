#!/usr/bin/env bash

if [ -x "$(command -v brew)" ]; then
	_bin="$(brew --prefix)/bin/brew"
	if [ -f "$_bin" ]; then
		eval "$("$_bin" shellenv)"
	fi
fi
