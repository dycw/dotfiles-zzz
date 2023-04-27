#!/usr/bin/env bash

if [ -x "$(command -v zoxide)" ]; then
	export _ZO_EXCLUDE_DIRS='/tmp/*'
	export _ZO_RESOLVE_SYMLINKS=1
fi
