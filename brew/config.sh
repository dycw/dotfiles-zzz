#!/usr/bin/env bash

case "$(uname -s)" in
Darwin*) eval "$(/opt/homebrew/bin/brew shellenv)" ;;
Linux*) eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" ;;
*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
esac
