#!/usr/bin/env bash

if [ -x "$(command -v rg)" ]; then
	alias grep='rg'
fi
