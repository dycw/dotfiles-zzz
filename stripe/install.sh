#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running stripe/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]] && ! [ -x "$(command -v stripe)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install stripe/stripe-cli/stripe
fi
