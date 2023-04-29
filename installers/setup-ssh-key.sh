#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking SSH key..."

path_ssh_key="$HOME/.ssh/id_rsa"
path_ssh_key=/tmp/.ssh/id_rsa
root="$(git rev-parse --show-toplevel)"
if ! [ -f "$path_ssh_key" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Setting up SSH key... "
	echo "Please copy the private key for this machine ($HOSTNAME)"
	echo "You may wish to sign in at: https://my.1password.com/signin"
	read -p "Press 'y' to continue... " -n 1 -r
	echo
	if ! [[ "$REPLY" =~ ^[Yy]$ ]]; then
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Exiting..."
		exit 0
	fi
	mkdir -p "$(dirname "$path_ssh_key")"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		echo "$(date '+%Y-%m-%d %H:%M:%S'): NOT IMPLEMENTED YET..."
		;;
	Linux*)
		# shellcheck source=/dev/null
		source "$root/xsel/install.sh"
		xsel -b >>"$path_ssh_key"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
	chmod g-rwx,o-rwx "$path_ssh_key"
fi
