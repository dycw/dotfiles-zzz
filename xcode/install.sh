#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running xcode/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	xcode-select --install

	# https://github.com/expo/expo/issues/21727#issuecomment-1471621054
	sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
fi
