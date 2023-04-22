#!/usr/bin/env bash
# shellcheck source=/dev/null

# common (first)
_FILE="${XDG_CONFIG_HOME:-$HOME/.config}/sh/common.sh"
if [ -f "$_FILE" ]; then
	source "$_FILE"
fi

# homebrew (first)
export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew"
export HOMEBREW_CELLAR="$HOMEBREW_PREFIX/Cellar"
export HOMEBREW_REPOSITORY="$HOMEBREW_PREFIX/Homebrew"
export PATH="$HOMEBREW_PREFIX/bin:$HOMEBREW_PREFIX/sbin${PATH:+:$PATH}"
export MANPATH="$HOMEBREW_PREFIX/share/man${MANPATH:+:$MANPATH}:"
export INFOPATH="$HOMEBREW_PREFIX/share/info${INFOPATH:+:$INFOPATH}"

# bash
alias bashrc='$EDITOR "$HOME/.bashrc"'
export HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/bash/history"
mkdir -p "$(dirname "$HISTFILE")"
set -o vi
shopt -s autocd
shopt -s cdspell
shopt -s checkjobs
shopt -s checkwinsize
shopt -s direxpand
shopt -s dotglob
shopt -s extglob
shopt -s globstar
shopt -s histappend
shopt -s nocaseglob
shopt -s nocasematch
shopt -s shift_verbose
shopt -s xpg_echo

# direnv
if [ -x "$(command -v direnv)" ]; then
	eval "$(direnv hook bash)"
fi

# fzf
_FILE="${XDG_CONFIG_HOME:-$HOME/.config}/fzf/fzf.bash"
if [ -f "$_FILE" ]; then
	source "$_FILE"
fi

# fzf-tab-completion
if [ -x "$(command -v fzf)" ]; then
	_FILE="$_PATH_DOTFILES/submodules/fzf-tab-completion/bash/fzf-bash-completion.sh"
	if [ -f "$_FILE" ]; then
		source "$_FILE"
		bind -x '"\t": fzf_bash_completion'
	fi
fi

# heroku
_FILE="${XDG_CACHE_HOME:-$HOME/.cache}/heroku/autocomplete/bash_setup"
if [ -f "$_FILE" ]; then
	source "$_FILE"
fi

# nvm
_FILE="${NVM_DIR:-${XDG_CONFIG_HOME:-$HOME/.config}/nvm}/bash_completion"
if [ -f "$_FILE" ]; then
	source "$_FILE"
fi

# pyenv
alias pyenv-install-with-brew='CC="$(brew --prefix gcc)/bin/gcc-12" pyenv install' # https://bit.ly/3KYPrc0

# starship
if [ -x "$(command -v starship)" ]; then
	eval "$(starship init bash)"
fi

# xclip
if [ -x "$(command -v xclip)" ]; then
	alias pbcopy='xclip -selection clipboard'
	alias pbpaste='xclip -selection clipboard -o'
fi

# zoxide
if [ -x "$(command -v zoxide)" ] && [ -x "$(command -v fzf)" ]; then
	eval "$(zoxide init bash --cmd j --hook prompt)"
fi
