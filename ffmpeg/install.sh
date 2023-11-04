#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running ffmpeg/install.sh..."

if ! [ -x "$(command -v ffmpeg)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install ffmpeg
fi
