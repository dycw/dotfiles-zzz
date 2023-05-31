#!/usr/bin/env bash

if [ -x "$(command -v pnpx)" ]; then
	alias prig='pnpx prisma generate'
	alias primd='pnpx prisma migrate dev'
elif [ -x "$(command -v npx)" ]; then
	alias prig='npx prisma generate'
	alias primd='npx prisma migrate dev'
fi
