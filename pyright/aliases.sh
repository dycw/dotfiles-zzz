#!/usr/bin/env bash

if [ -x "$(command -v pyright)" ]; then
	alias pyr='pyright'
	alias pyrw='pyright -w'
fi
