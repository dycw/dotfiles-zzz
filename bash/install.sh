#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running bash/install.sh..."

_root="$(git rev-parse --show-toplevel)"
# shellcheck source=/dev/null
source "$_root/brew/install.sh"
if ! grep -Fxq bash-completion <<<"$(brew list -1)"; then
	brew install bash-completion
fi

# folders
mkdir -p "$HOME/.cache/bash"

# symlinks
for _name in bash_profile bashrc; do
	# shellcheck source=/dev/null
	source "$_root/installers/symlink.sh" \
		"$HOME/dotfiles/bash/$_name" "$HOME/.$_name"
done
