#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running certbot/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install-package.sh" \
		certbot certbot
elif [[ "$(uname -s)" =~ Linux* ]]; then
	sudo snap install --classic certbot
	sudo snap install certbot-dns-duckdns
	sudo snap connect certbot:plugin certbot-dns-duckdns
fi
