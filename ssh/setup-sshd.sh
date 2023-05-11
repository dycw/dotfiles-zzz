#!/usr/bin/env bash

_file=/etc/ssh/sshd_config
echo "$(date '+%Y-%m-%d %H:%M:%S'): Configuring $_file..."
_exprs=(
	'#PermitRootLogin prohibit-password/PermitRootLogin no'
	'#PasswordAuthentication yes/PasswordAuthentication no'
)
for _expr in "${_exprs[@]}"; do
	sudo sed -i "s/$_expr/g" "$_file"
done
