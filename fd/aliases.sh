#!/usr/bin/env bash

if [ -x "$(command -v fd)" ]; then
	alias fdd='fd --type=directory'
	alias fde='fd --type=executable'
	alias fdf='fd --type=file'
	alias fds='fd --type=symlink'
fi
