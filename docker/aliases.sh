#!/usr/bin/env bash

if [ -x "$(command -v docker)" ]; then
	alias dc='docker compose'
	alias dcb='docker compose build'
	alias dcd='docker compose down'
	alias dcdv='docker compose down -v'
	alias dce='docker compose exec'
	alias dcl='docker compose logs'
	alias dclf='docker compose logs -f'
	alias dcu='docker compose up'
	alias dcub='docker compose up --build'
	alias dcubd='docker compose up --build -d'
fi
