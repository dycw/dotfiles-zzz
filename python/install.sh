#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running python/install.sh..."

for _ver in 3.10 3.11 3.12; do
	# shellcheck source=/dev/null
	if ! grep -Fxq "python@${_ver}" <<<"$(brew list -1)"; then
		brew install "python@${_ver}"
	fi
done
