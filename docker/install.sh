#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Installation for docker..."

if ! [ -x "$(command -v docker)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing docker..."
	case "$(uname -s)" in
	Darwin*)
		echo "$(date '+%Y-%m-%d %H:%M:%S'): NOT IMPLEMENTED YET..."
		;;
	Linux*)
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
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi
