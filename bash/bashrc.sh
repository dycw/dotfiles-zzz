#!/usr/bin/env bash
# shellcheck source=/dev/null

_DIR_SCRIPT="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

# dotfiles
export DOTFILES="$HOME/dotfiles"
export PATH="$DOTFILES/bin${PATH:+:$PATH}"
export PATH="$HOME/.local/bin${PATH:+:$PATH}"

# homebrew
export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew"
export HOMEBREW_CELLAR="$HOMEBREW_PREFIX/Cellar"
export HOMEBREW_REPOSITORY="$HOMEBREW_PREFIX/Homebrew"
export PATH="$HOMEBREW_PREFIX/bin:$HOMEBREW_PREFIX/sbin${PATH:+:$PATH}"
export MANPATH="$HOMEBREW_PREFIX/share/man${MANPATH:+:$MANPATH}:"
export INFOPATH="$HOMEBREW_PREFIX/share/info${INFOPATH:+:$INFOPATH}"
_DIR="/home/linuxbrew_dir/.linuxbrew_dir/bin/brew_dir" && [ -f "$_DIR" ] &&
	eval "$("$_DIR" bash)"

# aliases
function expand-alias() {
	eval "set -- $(alias -- "$1")"
	eval 'printf "%s\n" "${'"$#"'#*=}"'
}

# atom
export GIST_ID=690a59ef26208e43fa880c874e01c1

# bash
alias bashrc='$EDITOR "$HOME/.bashrc"'
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

# bash-it
export BASH_IT="$_DIR_SCRIPT/../submodules/bash-it"
_FILE="$BASH_IT/bash_it.sh" && [ -f "$_FILE" ] && source "$_FILE"

# bat
if [ -x "$(command -v bat)" ]; then
	alias cat='bat'
	alias catp='bat --style=plain'
	tf() { tail -f "$1" | bat --paging=never -l log; }
	export MANPAGER="sh -c 'col -bx | bat -l man -p'"
fi

# batgrep
alias bg='batgrep'

# batwatch
alias bw='batwatch'

# cargo
if [ -d "$HOME/.cargo" ]; then
	export PATH="$HOME/.cargo/bin${PATH:+:$PATH}"
fi
if [ -x "$(command -v cargo)" ] && [ -x "$(command -v watchexec)" ]; then
	alias wcarb='watchexec -- cargo build'
	alias wcarr='watchexec -- cargo run'
	alias wcart='watchexec -- cargo test'
fi

# cd
alias ~='cd "$HOME"'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias cdcache='cd "${XDG_CACHE_HOME:-$HOME/.cache}"'
alias cdconfig='cd "${XDG_CONFIG_HOME:-$HOME/.config}"'
alias cddf='cd $HOME/dotfiles'
alias cddl='cd $HOME/Downloads'
alias cddt='cd $HOME/Desktop'
alias cdp='cd $HOME/Pictures'
alias cdw='cd $HOME/work'
mkdir -p "$HOME/work"

# cisco
export PATH="$/opt/cisco/anyconnect/bin${PATH:+:$PATH}"

# clear
alias cl='clear'

# direnv
if [ -x "$(command -v direnv)" ]; then
	alias dea='direnv allow'
	eval "$(direnv hook bash)"
fi

# dotfiles-local
_FILE="$HOME/.bashrc.local.sh" && [ -f "$_FILE" ] && source "$_FILE"

# dropbox
_DIR='/data/derek'
export PATH_DROPBOX="$_DIR/Dropbox"
if [ -d "$_DIR" ] && [ -x "$(command -v dropbox.py)" ]; then
	HOME="$_DIR" dropbox.py start >/dev/null 2>&1
	if [ -d "$PATH_DROPBOX" ]; then
		alias cddb='cd $PATH_DROPBOX'
		alias with-home-dropbox-py='HOME=$(dirname $PATH_DROPBOX) dropbox.py'
	fi
fi

# exa
if [ -x "$(command -v exa)" ]; then
	alias ls='exa'
	function __exa_base() { exa -F --group-directories-first "$@"; }
	function __exa_short() { __exa_base -x "$@"; }
	function l() { __exa_short --git-ignore "$@"; }
	function la() { l -a "$@"; }
	function lag() { __exa_short -a "$@"; }
	function __exa_long() { __exa_base -ghl --git --time-style=long-iso "$@"; }
	function ll() { __exa_long --git-ignore "$@"; }
	function lla() { ll -a "$@"; }
	function llag() { __exa_long -a "$@"; }

	function __watch_exa_base() { watch -n 0.1 --color -- exa -F --color=always "$@"; }
	function __watch_exa_short() { __watch_exa_base -x "$@"; }
	function wl() { __watch_exa_short --git-ignore "$@"; }
	function wla() { watchl -a "$@"; }
	function wlag() { __watch_exa_short -a "$@"; }
	function __watch_exa_long() { __watch_exa_base -ghl --git --time-style=long-iso "$@"; }
	function wll() { __watch_exa_long --git-ignore "$@"; }
	function wlla() { watchll -a "$@"; }
	function wllag() { __watch_exa_long -a "$@"; }
fi

# fd
if [ -x "$(command -v fd)" ]; then
	alias fdd='fd --type=directory'
	alias fde='fd --type=executable'
	alias fdf='fd --type=file'
	alias fds='fd --type=symlink'
fi

# fzf
_FILE="$HOME/.fzf.bash" && [ -f "$_FILE" ] && source "$_FILE"
if [ -x "$(command -v fzf)" ]; then
	# https://bit.ly/2OMLMpm
	[ -x "$(command -v fd)" ] &&
		export FZF_DEFAULT_COMMAND='fd -HL -c=always -E=.git -E=node_modules'
	if [ -x "$(command -v bat)" ] && [ -x "$(command -v tree)" ]; then
		export FZF_DEFAULT_OPTS="
      --ansi
      --bind 'ctrl-a:select-all'
      --bind 'ctrl-e:execute(echo {+} | xargs -o vim)'
      --bind 'ctrl-v:execute(code {+})'
      --bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
      --color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
      --height=80%
      --info=inline
      --layout=reverse
      --multi
      --preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
      --preview-window 'right:60%:wrap'
      --prompt='∼ ' --pointer='▶' --marker='✓'
      "
		export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND -t=f -t=d"
		export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND -t=d"
	fi
fi

# fzf-tab-completion
if [ -x "$(command -v fzf)" ]; then
	_FILE="$_DIR_SCRIPT/../submodules/fzf-tab-completion/bash/fzf-bash-completion.sh"
	if [ -f "$_FILE" ]; then
		source "$_FILE"
		bind -x '"\t": fzf_bash_completion'
	fi
fi

# gem
if [ -x "$(command -v gem)" ]; then
	__bin="$(gem environment gemdir)/bin"
	if [ -d "__bin" ]; then
		export PATH="$__bin${PATH:+:$PATH}"
	fi
fi

# ghcup
_FILE="$HOME/.ghcup/env" && [ -f "$_FILE" ] && source "$_FILE"

# git
alias cdr='cd $(git rev-parse --show-toplevel)'
alias gitconfig='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/git/config"'
alias gitconfiglocal='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/git/config.local"'
alias gitignore='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/git/ignore"'
_ALIASES=$(
	cd "$DOTFILES" || exit
	git --list-cmds=alias
)
for _ALIAS in $_ALIASES; do
	# shellcheck disable=SC2139,SC2140
	alias "g$_ALIAS"="git $_ALIAS"
done

# gitweb
[ -x "$(command -v gitweb)" ] && alias gw='gitweb'

# go
_DIR='/usr/local/go/bin'
if [ -d "$_DIR" ]; then
	export PATH="$_DIR${PATH:+:$PATH}"
fi

# less
_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/less"
mkdir -p "$_DIR"
export LESSHISTFILE="$_DIR/history"
export LESSKEY="$_DIR/lesskey"

# nano
alias nanorc='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/nanorc"'

# neovim/LunarVim
if [ -x "$(command -v lvim)" ]; then
	alias n='lvim'
	alias nps='lvim +PackerSync'
	alias configlua='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/lvim/config.lua"'
	export EDITOR='lvim'
elif [ -x "$(command -v nvim)" ]; then
	export EDITOR='nvim'
fi

# npm
alias npmrc='$EDITOR "$HOME/.npmrc"'

# nvm
export NVM_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# path
alias echo-path='sed '"'"'s/:/\n/g'"'"' <<< "$PATH"'

# poetry
alias pi='poetry install'
alias pu='poetry update'
export PATH="$HOME/.poetry/bin${PATH:+:$PATH}"

# pre-commit
alias pca='pre-commit run -a'
alias pcav='pre-commit run -av'
alias pci='pre-commit install'
alias pcau='pre-commit autoupdate'
alias pcaua='pre-commit autoupdate && pre-commit run -a'
alias pctr='pre-commit try-repo .'
alias pcui='pre-commit uninstall'

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin${PATH:+:$PATH}"
[ -x "$(command -v pyenv)" ] && eval "$(pyenv init --path)"

# pyright
alias pyr='pyright'
alias pyrw='pyright -w'
[ -x "$(command -v watchexec)" ] && alias wpyr='watchexec -- pyright .'

# python
alias bump='bump2version patch'
alias bump-minor='bump2version minor'
alias bump-major='bump2version major'
alias hypothesis-ci='export HYPOTHESIS_PROFILE=ci'
alias hypothesis-debug='export HYPOTHESIS_PROFILE=debug'
alias hypothesis-default='export HYPOTHESIS_PROFILE=default'
alias hypothesis-dev='export HYPOTHESIS_PROFILE=dev'
alias lint='autoflake -r --in-place --remove-all-unused-imports --remove-duplicate-keys . && black .'
alias pyprojecttoml='$EDITOR $(git rev-parse --show-toplevel)/pyproject.toml'
alias pyt='pytest'
alias pytco='pytest --co'
_FILE="$DOTFILES/bin/pytest-aliases" && [ -f "$_FILE" ] && source "$_FILE"

# ranger
[ -x "$(command -v ranger)" ] && alias r='ranger'

# redis
_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/redis"
mkdir -p "$_DIR"
export REDISCLI_HISTFILE="$_DIR/history"
export REDISCLI_RCFILE="$_DIR/redis/redisclirc"

# rg
[ -x "$(command -v rg)" ] && alias rg='rg -L --hidden --no-messages'

# rm
alias rmrf='rm -rf'

# sqlite3
_DIR="$XDG_CACHE_HOME/sqlite3"
mkdir -p "$_DIR"
export SQLITE_HISTORY="$_DIR/history"

# starship
alias starshiptoml='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/starship.toml"'
[ -x "$(command -v starship)" ] && eval "$(starship init bash)"

# tmux
if [ -x "$(command -v tmux)" ]; then
	alias tmuxconf='$EDITOR "$HOME/.tmux.conf.local"'
	export TERM='xterm-256color'
fi

# xclip
if [ -x "$(command -v xclip)" ]; then
	alias pbcopy='xclip -selection clipboard'
	alias pbpaste='xclip -selection clipboard -o'
fi

# XDG
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-/run/user/$USER}"

# wget
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
mkdir -p "${XDG_CACHE_HOME:-$HOME/.cache}/wget"

# zoxide
export _ZO_EXCLUDE_DIRS="/tmp/*"
export _ZO_RESOLVE_SYMLINKS=1
[ -x "$(command -v zoxide)" ] && [ -x "$(command -v fzf)" ] &&
	eval "$(zoxide init bash --cmd j --hook prompt)"

alias luamake=/home/derek/.lua-language-server/3rd/luamake/luamake
