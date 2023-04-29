#!/usr/bin/env bash

download_to="$1"
user="$2"
repo="$3"
pattern="$4"
api_url="https://api.github.com/repos/$user/$repo/releases/latest"
download_url=$(
	curl -s "$api_url" |
		grep browser_download_url |
		grep "$pattern"
)
for pattern in "${@:5}"; do
	download_url=$(echo "$download_url" | grep -v "$pattern")
done
download_url=$(
	echo "$download_url" |
		cut -d : -f 2,3 |
		tr -d '[:blank:]' |
		tr -d \"
)
echo "$(date '+%Y-%m-%d %H:%M:%S'): Downloading $download_url..."
(
	cd "$download_to" || exit
	wget -q "$download_url"
)
