#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Setting up dotfiles..."

dotfiles="$HOME/dotfiles"
if [ -d "$dotfiles" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Updating dotfiles..."
	(
		cd "$dotfiles" || exit
		git checkout master
		git pull
	)
else
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for git..."
	if ! [ -x "$(command -v git)" ]; then
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing git..."
		case "$(uname -s)" in
		Darwin*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping for Mac..." ;;
		Linux*) sudo apt -y install git ;;
		*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
		esac
	fi

	echo "$(date '+%Y-%m-%d %H:%M:%S'): Cloning dotfiles..."
	git clone https://github.com/dycw/dotfiles.git "$dotfiles"

	cd "$(dirname "$dotfiles")" || exit
	root="$(git rev-parse --show-toplevel)"
	# shellcheck source=/dev/null
	source "$root/installers/setup-ssh-key.sh"

	echo "$(date '+%Y-%m-%d %H:%M:%S'): Setting remote to SSH..."
	git remote set-url origin git@github.com:dycw/dotfiles.git

	echo "$(date '+%Y-%m-%d %H:%M:%S'): Running install scripts..."
	# shellcheck source=/dev/null
	source "$root/installer/run-install-scripts.sh"
fi
