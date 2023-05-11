#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running typescript/install.sh..."

_root="$(git rev-parse --show-toplevel)"
# shellcheck source=/dev/null
source "$_root/npm/install.sh"
if ! grep -Fq typescript <<<"$(npm list -g)"; then
	npm install -g typescript
fi
