#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running firebase/install.sh..."

if ! [ -x "$(command -v firebase)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install firebase-cli
fi
