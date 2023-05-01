#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running ssh/install.sh..."

_file=/etc/ssh/sshd_config
_root="$(git rev-parse --show-toplevel)"
if ! [ -f "$_file" ]; then
	if [[ "$(uname -s)" =~ Darwin* ]]; then
		# shellcheck source=/dev/null
		source "$_root/ssh/setup-sshd.sh"
	elif [[ "$(uname -s)" =~ Linux* ]]; then
		sudo apt -y install openssh-server
		# shellcheck source=/dev/null
		source "$_root/ssh/setup-sshd.sh"
		sudo systemctl restart sshd
	fi
fi

# shellcheck source=/dev/null
source "$_root/ssh/setup-authorized-keys.sh"
