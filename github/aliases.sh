#!/usr/bin/env bash

if [ -x "$(command -v gh)" ]; then
	alias ghprc='gh pr create'
fi
