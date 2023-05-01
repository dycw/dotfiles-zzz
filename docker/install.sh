#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running docker/install.sh..."

if ! [ -x "$(command -v docker)" ]; then
	if [[ "$(uname -s)" =~ Darwin* ]]; then
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/brew/install.sh"
		brew install --cask docker
	elif [[ "$(uname -s)" =~ Linux* ]]; then
		# https://bit.ly/3oPKJ9X
		sudo apt -y update
		sudo apt -y install ca-certificates curl gnupg
		keyrings=/etc/apt/keyrings
		sudo mkdir -m 0755 -p "$keyrings"
		curl -fsLS https://download.docker.com/linux/ubuntu/gpg |
			sudo gpg --dearmor -o "$keyrings/docker.gpg"
		# shellcheck source=/dev/null
		echo \
			"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |
			sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
		sudo apt -y update
		sudo apt -y install docker-ce docker-ce-cli containerd.io \
			docker-buildx-plugin docker-compose-plugin

		# permissions
		# https://dockr.ly/3EIzMev
		sudo groupadd docker
		sudo usermod -aG docker "$USER"
		newgrp docker
	fi
fi
