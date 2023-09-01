#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running vscode/install.sh..."

if ! [ -x "$(command -v vscode)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing VSCode..."
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install --cask visual-studio-code
fi
