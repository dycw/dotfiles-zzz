#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running vscode/install.sh..."

_root="$(git rev-parse --show-toplevel)"
if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$_root/brew/install.sh"
	if ! [ -x "$(command -v code)" ]; then
		brew install --cask visual-studio-code
	fi
fi

# symlinks
if [[ "$(uname -s)" =~ Darwin* ]]; then
	for _name in keybindings.json settings.json snippets; do
		_link_name="$HOME/dotfiles/vscode/$_name"
		# shellcheck source=/dev/null
		source "$_root/installers/symlink.sh" \
			"$_link_name" \
			"$HOME/Library/Application Support/Code/User/$_name"
	done
fi
