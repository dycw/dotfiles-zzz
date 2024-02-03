#!/usr/bin/env bash

if [ -x "$(command -v git)" ]; then
	alias cdr='cd $(git rev-parse --show-toplevel)'
	alias gitconfig='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/git/config"'
	alias gitconfiglocal='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/git/config.local"'
	alias gitignore='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/git/ignore"'
	_aliases=$(git --list-cmds=alias)
	while IFS= read -r _alias; do
		# shellcheck disable=SC2139,SC2140
		alias "g$_alias"="git $_alias"
	done <<EOF
$_aliases
EOF

	if [ -x "$(command -v watch)" ]; then
		alias wgd='watch -d -n 0.1 --color -- git diff'
		alias wgs='watch -d -n 0.1 --color -- git status'
	fi
fi
