#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking SSH key..."

path_ssh_key="$HOME/.ssh/id_rsa"
root="$(git rev-parse --show-toplevel)"
if ! [ -f "$path_ssh_key" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Setting up SSH key... "
	echo "Please copy the private key for this machine ($HOSTNAME)"
	echo "You may wish to sign in at: https://my.1password.com/signin"
	echo "Press 'y' or 'n' to continue..."
	old_stty_cfg=$(stty -g)
	stty raw -echo
	answer=$(while ! head -c 1 | grep -i '[yn]'; do true; done)
	stty "$old_stty_cfg"
	if [ "$answer" != "${answer#[Yy]}" ]; then
		mkdir -p "$(dirname "$path_ssh_key")"
		case "$(uname -s)" in
		Darwin*) pbpaste >>"$path_ssh_key" ;;
		Linux*)
			# shellcheck source=/dev/null
			source "$root/xsel/install.sh"
			xsel -b >>"$path_ssh_key"
			;;
		*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
		esac
		chmod g-rwx,o-rwx "$path_ssh_key"
	else
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Exiting..."
	fi
fi
