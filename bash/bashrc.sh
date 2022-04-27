#!/usr/bin/env bash
# shellcheck source=/dev/null

# dotfiles
export DOTFILES="$HOME/dotfiles"

# binaries
_DIRS=("$DOTFILES" "$HOME/.local")
for _DIR in "${_DIRS[@]}"; do
	_BIN="$_DIR/bin"
	if [ -d "$_BIN" ]; then
		export PATH="$_BIN${PATH:+:$PATH}"
	fi
done

# homebrew
export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew"
export HOMEBREW_CELLAR="$HOMEBREW_PREFIX/Cellar"
export HOMEBREW_REPOSITORY="$HOMEBREW_PREFIX/Homebrew"
export PATH="$HOMEBREW_PREFIX/bin:$HOMEBREW_PREFIX/sbin${PATH:+:$PATH}"
export MANPATH="$HOMEBREW_PREFIX/share/man${MANPATH:+:$MANPATH}:"
export INFOPATH="$HOMEBREW_PREFIX/share/info${INFOPATH:+:$INFOPATH}"

# aliases
function expand-alias() {
	eval "set -- $(alias -- "$1")"
	eval 'printf "%s\n" "${'"$#"'#*=}"'
}

# atom
export GIST_ID=690a59ef26208e43fa880c874e01c1

# bash
alias bashrc='$EDITOR "$HOME/.bashrc"'
export HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/bash/history"
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
_DIR="$DOTFILES/submodules/bash-it"
if [ -d "$_DIR" ]; then
	export BASH_IT="$_DIR"
	_FILE="$BASH_IT/bash_it.sh"
	if [ -f "$_FILE" ]; then
		source "$_FILE"
	fi
fi

# bat
if [ -x "$(command -v bat)" ]; then
	alias cat='bat'
	alias catp='bat --style=plain'
	tf() { tail -f "$1" | bat --paging=never -l log; }
	export MANPAGER="sh -c 'col -bx | bat -l man -p'"
fi

# batgrep
if [ -x "$(command -v batgrep)" ]; then
	alias bg='batgrep'
fi

# batwatch
if [ -x "$(command -v batwatch)" ]; then
	alias bw='batwatch'
fi

# bottom
if [ -x "$(command -v btm)" ]; then
	alias top='btm'
	alias htop='btm'
fi

# bump2version
if [ -x "$(command -v bump2version)" ]; then
	alias bump='bump2version patch'
	alias bump-minor='bump2version minor'
	alias bump-major='bump2version major'
fi

# cargo
_BIN="$HOME/.cargo/bin"
if [ -d "$_BIN" ]; then
	export PATH="$_BIN${PATH:+:$PATH}"
fi
if [ -x "$(command -v cargo)" ] && [ -x "$(command -v watchexec)" ]; then
	alias carb='cargo build'
	alias carc='cargo check'
	alias carn='cargo new'
	alias carr='cargo run'
	alias cart='cargo test'
	alias cartig='cargo test -- --ignored'
	alias cartso='cargo test -- --show-output'
	alias rbt-carr='RUST_BACKTRACE=1 cargo run'
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
alias cddf='cd $DOTFILES'
alias cddl='cd $HOME/Downloads'
alias cddt='cd $HOME/Desktop'
alias cdp='cd $HOME/Pictures'
alias cdw='cd $HOME/work'

# cisco
_BIN='/opt/cisco/anyconnect/bin'
if [ -d "$_BIN" ]; then
	export PATH="$_BIN${PATH:+:$PATH}"
fi

# clear
alias cl='clear'

# crontab
alias crontab='crontab -i'

# direnv
if [ -x "$(command -v direnv)" ]; then
	alias dea='direnv allow'
	eval "$(direnv hook bash)"
fi

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

# dust
if [ -x "$(command -v dust)" ]; then
	alias du='dust'
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
_FILE="${XDG_CONFIG_HOME:-$HOME/.config}/fzf/fzf.bash"
if [ -f "$_FILE" ]; then
	source "$_FILE"
fi
if [ -x "$(command -v fzf)" ]; then
	# https://bit.ly/2OMLMpm
	if [ -x "$(command -v fd)" ]; then
		export FZF_DEFAULT_COMMAND='fd -HL -c=always -E=.git -E=node_modules'
	fi
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
	_FILE="$DOTFILES/submodules/fzf-tab-completion/bash/fzf-bash-completion.sh"
	if [ -f "$_FILE" ]; then
		source "$_FILE"
		bind -x '"\t": fzf_bash_completion'
	fi
fi

# gem
if [ -x "$(command -v gem)" ]; then
	_BIN="$(gem environment gemdir)/bin"
	if [ -d "$_BIN" ]; then
		export PATH="$_BIN${PATH:+:$PATH}"
	fi
fi

# ghcup
_FILE="$HOME/.ghcup/env"
if [ -f "$_FILE" ]; then
	source "$_FILE"
fi

# git
if [ -x "$(command -v git)" ]; then
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
fi

# gitweb
if [ -x "$(command -v gitweb)" ]; then
	alias gw='gitweb'
fi

# go
_BIN='/usr/local/go/bin'
if [ -d "$_BIN" ]; then
	export PATH="$_BIN${PATH:+:$PATH}"
fi
_DIR="$HOME/.go"
if [ -d "$_DIR" ]; then
	export GOROOT="$_DIR"
	export PATH="$GOROOT/bin${PATH:+:$PATH}"
fi
_DIR="$HOME/go"
if [ -d "$_DIR" ]; then
	export GOPATH="$_DIR"
	export PATH="$GOPATH/bin${PATH:+:$PATH}"
fi

# heroku
_FILE="${XDG_CACHE_HOME:-$HOME/.cache}/heroku/autocomplete/bash_setup"
if test -f "$_FILE"; then
	source "$_FILE"
fi

# hyperfine
if [ -x "$(command -v hyperfine)" ]; then
	alias time='hyperfine'
fi

# less
export LESSHISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/less/history"
export LESSKEY="${XDG_CONFIG_HOME:-$HOME/.config}/less/lesskey"

# nano
if [ -x "$(command -v nano)" ]; then
	alias nanorc='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/nanorc"'
fi

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
if [ -x "$(command -v npm)" ]; then
	alias npmrc='$EDITOR "$HOME/.npmrc"'
fi

# nvm
export NVM_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# path
alias echo-path='sed '"'"'s/:/\n/g'"'"' <<< "$PATH"'

# pip
alias pi='pip install'
alias pie='pip install --editable .'
alias piup='pip install --upgrade pip'
alias pipt='pip install pip-tools'
alias plo='pip list --outdated'
alias pipconf='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/pip/pip.conf"'
alias pypirc='$EDITOR "$HOME/.pypirc"'

# pip-tools
alias psreq='pip install pip-tools && pip-sync requirements.txt requirements-dev.txt'

# poetry
_BIN="$HOME/.poetry/bin"
if [ -d "$_BIN" ]; then
	alias pi='poetry install'
	alias pu='poetry update'
	alias pugcm='poetry update && git add pyproject.toml poetry.lock && git commit -m "Update pyproject.toml"'
	alias pudr='poetry update --dry-run'
	export PATH="$_BIN${PATH:+:$PATH}"
fi

# postgres
alias pguser='sudo -i -u postgres'

# pre-commit
alias pcr='pre-commit run'
alias pca='pre-commit run -a'
alias pcrav='pre-commit run -av'
alias pci='pip install pre-commit && pre-commit install'
alias pcau='pre-commit autoupdate'
alias pcaua='pre-commit autoupdate && pre-commit run -a'
alias pctr='pre-commit try-repo'
alias pctra='pre-commit try-repo -a'
alias pctrav='pre-commit try-repo -av'
alias pcui='pre-commit uninstall'

# pyenv
alias pyenv-install-with-brew='CC="$(brew --prefix gcc)/bin/gcc-11" pyenv install' # https://bit.ly/3KYPrc0
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin${PATH:+:$PATH}"
if [ -x "$(command -v pyenv)" ]; then
	eval "$(pyenv init --path)"
fi

# pyright
if [ -x "$(command -v pyright)" ]; then
	alias pyr='pyright'
	alias pyrw='pyright -w'
	if [ -x "$(command -v watchexec)" ]; then
		alias wpyr='watchexec -- pyright'
	fi
fi

# python
alias hypothesis-ci='export HYPOTHESIS_PROFILE=ci'
alias hypothesis-debug='export HYPOTHESIS_PROFILE=debug'
alias hypothesis-default='export HYPOTHESIS_PROFILE=default'
alias hypothesis-dev='export HYPOTHESIS_PROFILE=dev'
alias pyprojecttoml='$EDITOR $(git rev-parse --show-toplevel)/pyproject.toml'
alias pyt='pytest'
alias pytco='pytest --co'
alias setuppy='$EDITOR $(git rev-parse --show-toplevel)/setup.py'
_FILE="$DOTFILES/bin/pytest-aliases"
if [ -f "$_FILE" ]; then
	source "$_FILE"
fi

# ranger
if [ -x "$(command -v ranger)" ]; then
	alias r='ranger'
fi

# redis
export REDISCLI_HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/redis/history"
export REDISCLI_RCFILE="${XDG_CONFIG_HOME:-$HOME/.config}/redisclirc"

# rg
if [ -x "$(command -v rg)" ]; then
	alias grep='rg'
	export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME:-$HOME/.config}/ripgrep/ripgreprc"
fi

# rm
alias rmrf='rm -rf'

# sqlite3
export SQLITE_HISTORY="${XDG_CACHE_HOME:-$HOME/.cache}/sqlite/history"

# starship
if [ -x "$(command -v starship)" ]; then
	alias starshiptoml='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/starship.toml"'
	eval "$(starship init bash)"
fi

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

# xdg
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-/run/user/$USER}"

# wget
if [ -x "$(command -v wget)" ]; then
	export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
fi

# zoxide
if [ -x "$(command -v zoxide)" ]; then
	export _ZO_EXCLUDE_DIRS="/tmp/*"
	export _ZO_RESOLVE_SYMLINKS=1
	if [ -x "$(command -v fzf)" ]; then
		eval "$(zoxide init bash --cmd j --hook prompt)"
	fi
fi
