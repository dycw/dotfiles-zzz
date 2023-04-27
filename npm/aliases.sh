#!/usr/bin/env bash

if [ -x "$(command -v npm)" ]; then
	alias npmrc='$EDITOR "$HOME/.npmrc"'
fi
