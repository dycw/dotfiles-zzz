#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running lunarvim/install.sh..."

# dependencies
_root="$(git rev-parse --show-toplevel)"
for _app in curl neovim npm rust; do
	# shellcheck source=/dev/null
	source "$_root/$_app/install.sh"
done

# installation
bash <(
	curl -s \
		https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh
) -s -- -y --no-install-dependencies

# undo overrides
for name in lvim lvim.old; do
	dir_name="${XDG_CONFIG_HOME:-$HOME/.config}/$name"
	if [ -d "$dir_name" ] && ! [ -L "$dir_name" ]; then
		rm -rf "$dir_name"
	fi
done

# symlinks
for _name in after config.lua lazy-lock.json luasnippets snapshots; do
	# shellcheck source=/dev/null
	source "$_root/installers/symlink.sh" \
		"$HOME/dotfiles/lunarvim/$_name" \
		"${XDG_CONFIG_HOME:-$HOME/.config}/lvim/$_name"
done
