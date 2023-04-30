#!/usr/bin/env bash

for name in env aliases config autocomplete; do
	while IFS= read -r -d '' file; do
		echo "In source-all-files, pwd=$(pwd), file=$file"
		# shellcheck source=/dev/null
		source "$file"
	done < <(find "$HOME/dotfiles" -type f -name "$name.sh" -print0)
done
