#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for certbot..."

if ! [ -x "$(command -v certbot)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing certbot..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/brew/install-package.sh" \
			certbot certbot
		;;
	Linux*)
		sudo snap install --classic certbot
		sudo snap install certbot-dns-duckdns
		sudo snap connect certbot:plugin certbot-dns-duckdns
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi
