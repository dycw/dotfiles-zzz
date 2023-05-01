#!/usr/bin/env bash

if [ -x "$(command -v gem)" ]; then
	_bin="$(gem environment gemdir)/bin"
	if [ -d "$_bin" ]; then
		export PATH="$_bin${PATH:+:$PATH}"
	fi
fi
