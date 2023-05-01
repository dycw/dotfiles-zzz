#!/usr/bin/env bash

if [[ "$(uname -s)" =~ Darwin* ]]; then
	_dir="$HOME/Dropbox"
	if [ -d "$_dir" ]; then
		export PATH_DROPBOX="$_dir"
	fi
fi
