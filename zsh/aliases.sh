#!/usr/bin/env bash

if [ -n "${ZSH_VERSION+x}" ]; then
	alias zshrc='$EDITOR "$HOME/.zshrc"'
fi
