#!/usr/bin/env bash

_file="${XDG_CACHE_HOME:-$HOME/.cache}/heroku/autocomplete/bash_setup"
if [ -n "${BASH_VERSION+x}" ] && [ -f "$_file" ]; then
	# shellcheck source=/dev/null
	source "$_file"
fi
