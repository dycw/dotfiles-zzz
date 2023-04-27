#!/usr/bin/env bash

file=/etc/ssh/sshd_config
echo "$(date '+%Y-%m-%d %H:%M:%S'): Configuring $file..."
exprs=(
	'#PermitRootLogin prohibit-password/PermitRootLogin no'
	'#PasswordAuthentication yes/PasswordAuthentication no'
)
for expr in "${exprs[@]}"; do
	sudo sed -i "s/$expr/g" "$file"
done
