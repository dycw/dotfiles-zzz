#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running tesseract/install.sh..."

if ! [ -x "$(command -v tesseract)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install tesseract
fi
