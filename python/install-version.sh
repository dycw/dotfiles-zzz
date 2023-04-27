#!/usr/bin/env bash

version="$1"
echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for Python $version..."

if ! grep -q "$version" <<<"$(pyenv versions)"; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing Python $version..."
	pyenv install "$version:latest"
fi
