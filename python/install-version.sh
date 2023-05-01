#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running python/install-version.sh..."

if ! grep -q "$1" <<<"$(pyenv versions)"; then
	pyenv install "$1:latest"
fi
