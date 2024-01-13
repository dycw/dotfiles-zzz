#!/usr/bin/env bash

if [ -x "$(command -v ruff)" ]; then
	alias rw='ruff --watch .'
	if [ -x "$(command -v watchexec)" ]; then
		alias wrf='watchexec -d=5s -e=.py -- ruff format .'
	fi
fi
