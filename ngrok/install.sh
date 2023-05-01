#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running ngrok/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install --cask ngrok
elif [[ "$(uname -s)" =~ Linux* ]]; then
	curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc |
		sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null &&
		echo "deb https://ngrok-agent.s3.amazonaws.com buster main" |
		sudo tee /etc/apt/sources.list.d/ngrok.list &&
		sudo apt update && sudo apt install ngrok
fi
