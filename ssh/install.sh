#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for openssh-server..."

file=/etc/ssh/sshd_config
root="$(git rev-parse --show-toplevel)"
if ! [ -f "$file" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing openssh-server..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$root/ssh/setup-sshd.sh"
		;;
	Linux*)
		sudo apt -y install openssh-server
		# shellcheck source=/dev/null
		source "$root/ssh/setup-sshd.sh"
		sudo systemctl restart sshd
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

# shellcheck source=/dev/null
source "$root/ssh/setup-authorized-keys.sh"
