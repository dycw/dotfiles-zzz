#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for ngrok..."

if ! [ -x "$(command -v ngrok)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing ngrok..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/brew/install.sh"
		brew install ngrok/ngrok/ngrok
		;;
	Linux*)
		curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc |
			sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null &&
			echo "deb https://ngrok-agent.s3.amazonaws.com buster main" |
			sudo tee /etc/apt/sources.list.d/ngrok.list &&
			sudo apt update && sudo apt install ngrok
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi
