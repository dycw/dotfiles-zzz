#!/usr/bin/env bash

if [ -x "$(command -v ruff)" ]; then
	alias rw='ruff --watch .'
fi
