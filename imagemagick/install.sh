#!/usr/bin/env bash
# shellcheck source=/dev/null

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running imagemagick/install.sh..."

if ! [ -x "$(command -v convert)" ]; then
	sudo port install imagemagick +pango
fi
