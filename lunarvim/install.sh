#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for lunarvim..."

root="$(git rev-parse --show-toplevel)"
if ! [ -x "$(command -v lvim)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing lunarvim..."
	for app in curl neovim npm rust; do
		# shellcheck source=/dev/null
		source "$root/$app/install.sh"
	done
	bash <(
		curl -s \
			https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh
	) -s -- -y --no-install-dependencies
fi

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for lunarvim..."
for name in lvim lvim.old; do
	dir_name="${XDG_CONFIG_HOME:-$HOME/.config}/$name"
	if [ -d "$dir_name" ] && ! [ -L "$dir_name" ]; then
		rm -rf "$dir_name"
	fi
done
for name in after config.lua lazy-lock.json luasnippets snapshots; do
	target="$HOME/dotfiles/lunarvim/$name"
	link_name="${XDG_CONFIG_HOME:-$HOME/.config}/lvim/$name"
	# shellcheck source=/dev/null
	source "$root/installers/symlink.sh" "$target" "$link_name"
done
