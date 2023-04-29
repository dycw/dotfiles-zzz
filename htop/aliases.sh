#!/usr/bin/env bash

if [ -x "$(command -v htop)" ]; then
	alias htopu='htop -u "$USER"'
fi
