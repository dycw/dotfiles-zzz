#!/usr/bin/env bash

if [ -x "$(command -v bump2version)" ]; then
	alias bump='bump2version patch'
	alias bump-minor='bump2version minor'
	alias bump-major='bump2version major'
fi
