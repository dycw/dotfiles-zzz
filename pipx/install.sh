#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for pipx..."

if ! [ -x "$(command -v pipx)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing pipx..."
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/python/install-version.sh" 3.11
	bin_dir="$HOME/.local/bin/"
	mkdir -p "$bin_dir"
	(
		cd "$bin_dir" || exit
		PYENV_VERSION=3.11 python -m venv pipx_venv
		./pipx_venv/bin/pip install pipx
		ln -s "$bin_dir/pipx_venv/bin/pipx" "$bin_dir"
	)
fi
