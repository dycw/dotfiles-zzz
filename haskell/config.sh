#!/usr/bin/env bash

_file="$HOME/.ghcup/env"
if [ -f "$_file" ]; then
	# shellcheck source=/dev/null
	source "$_file"
fi
