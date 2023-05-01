#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running mongodb/install.sh..."

_root="$(git rev-parse --show-toplevel)"

if ! [ -x "$(command -v mongod)" ]; then
	if [[ "$(uname -s)" =~ Darwin* ]]; then
		# shellcheck source=/dev/null
		source "$_root/brew/install.sh"
		xcode-select --install
		brew tap mongodb/brew
		brew install mongodb-community
		brew services start mongodb-community
	elif [[ "$(uname -s)" =~ Linux* ]]; then
		sudo apt-get install gnupg
		curl -fsSL https://pgp.mongodb.com/server-6.0.asc |
			sudo gpg -o /usr/share/keyrings/mongodb-server-6.0.gpg --dearmor
		echo \
			"deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" |
			sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
		sudo apt-get update
		sudo apt-get install -y mongodb-org
		sudo systemctl start mongod
	fi
fi

if ! [ -x "$(command -v mongocli)" ]; then
	brew install mongocli
fi

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$_root/brew/install.sh"
	if ! grep -Fxq mongodb-compass <<<"$(brew list -1)"; then
		brew install --cask mongodb-compass
	fi
elif
	[[ "$(uname -s)" =~ Linux* ]] &&
		! grep -Fq mongodb-compass/stable <<<"$(apt list --installed)"
then
	_temp_dir="$(mktemp -d -t mongodb-compass-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
	(
		cd "$_temp_dir" || exit
		wget https://downloads.mongodb.com/compass/mongodb-compass_1.35.0_amd64.deb
		sudo dpkg -i ./*.deb
	)
fi
