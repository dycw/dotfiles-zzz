#!/usr/bin/env bash

for _name in env aliases config autocomplete; do
	while IFS= read -r -d '' _file; do
		# shellcheck source=/dev/null
		source "$_file"
	done < <(find "$HOME/dotfiles" -type f -name "$_name.sh" -print0)
done
