#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running hyper/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]]; then
	_root="$(git rev-parse --show-toplevel)"

	# shellcheck source=/dev/null
	source "$_root/brew/install.sh"
	if ! grep -Fxq hyper <<<"$(brew list -1)"; then
		brew install --cask hyper
	fi

	# shellcheck source=/dev/null
	source "$_root/installers/symlink.sh" \
		"$HOME/dotfiles/hyper/hyper.js" "$HOME/.hyper.js"
fi
