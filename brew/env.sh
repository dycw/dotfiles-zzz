#!/usr/bin/env bash

if [[ "$(uname -s)" =~ Darwin* ]]; then
	_bin=/opt/homebrew/bin
	if [ -d "$_bin" ]; then
		export PATH="$_bin${PATH:+:$PATH}"
	fi
elif [[ "$(uname -s)" =~ Linux* ]]; then
	_bin=/home/linuxbrew/.linuxbrew/bin
	if [ -d "$_bin" ]; then
		export PATH="$_bin${PATH:+:$PATH}"
	fi
fi
