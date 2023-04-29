#!/usr/bin/env bash

if [ -x "$(command -v cargo)" ]; then
	alias carb='cargo build'
	alias carc='cargo check'
	alias carn='cargo new'
	alias carr='cargo run'
	alias cart='cargo test'
	alias cartig='cargo test -- --ignored'
	alias cartso='cargo test -- --show-output'
	alias rbt-carr='RUST_BACKTRACE=1 cargo run'
	carn_main() { cargo new --name=main "$@"; }
	if [ -x "$(command -v watchexec)" ]; then
		alias wcarb='watchexec -e=.rs -- cargo build'
		alias wcarr='watchexec -e=.rs -- cargo run'
		alias wcart='watchexec -e=.rs -- cargo test'
	fi
fi
