#!/usr/bin/env bash

if [ -n "${BASH_VERSION+x}" ]; then
	alias bash-profile='$EDITOR "$HOME/.bash_profile"'
	alias bashrc='$EDITOR "$HOME/.bashrc"'
fi
