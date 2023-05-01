#!/usr/bin/env bash

if [[ "$(uname -s)" =~ Darwin* ]]; then
	_bin=/opt/homebrew/opt/curl/bin
	if [ -d "$_bin" ]; then
		export PATH="$_bin${PATH:+:$PATH}"
	fi
fi
