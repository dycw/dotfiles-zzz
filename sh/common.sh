#!/usr/bin/env sh
# shellcheck source=/dev/null

# aliases
expand_alias() {
	eval "set -- $(alias -- "$1")"
	eval 'printf "%s\n" "${'"$#"'#*=}"'
}

# binaries
set -- "$HOME/dotfiles" "$HOME/.local"
for _DIR; do
	_BIN="$_DIR/bin"
	if [ -d "$_BIN" ]; then
		export PATH="$_BIN${PATH:+:$PATH}"
	fi
done

# bat
if [ -x "$(command -v bat)" ]; then
	alias cat='bat'
	alias catp='bat --style=plain'
	tf() { tail -f "$1" | bat --paging=never -l log; }
	export MANPAGER="sh -c 'col -bx | bat -l man -p'"
fi

# bottom/htop
if [ -x "$(command -v btm)" ]; then
	alias top='btm'
	alias htop='btm'
elif [ -x "$(command -v htop)" ]; then
	alias htopu='htop -u "$USER"'
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
	if [ -x "$(command -v cargo-add)" ]; then
		alias cara='cargo-add'
	fi
	if [ -x "$(command -v watchexec)" ]; then
		alias wcarb='watchexec -e=.rs -- cargo build'
		alias wcarr='watchexec -e=.rs -- cargo run'
		alias wcart='watchexec -e=.rs -- cargo test'
	fi
fi

# cd
alias ~='cd "$HOME"'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias cdcache='cd "${XDG_CACHE_HOME:-$HOME/.cache}"'
alias cdconfig='cd "${XDG_CONFIG_HOME:-$HOME/.config}"'
alias cddf='cd "${PATH_DOTFILES:-$HOME/dotfiles}"'
alias cddl='cd $HOME/Downloads'
alias cddt='cd $HOME/Desktop'
alias cdp='cd $HOME/Pictures'
alias cdw='cd $HOME/work'

# chmod
chmod_files() {
	find . -type f -exec chmod "$1" {} \;
}
chmod_dirs() {
	find . -type d -exec chmod "$1" {} \;
}
chown_files() {
	find . -type f -exec chown "$1" {} \;
}
chown_dirs() {
	find . -type d -exec chown "$1" {} \;
}

# cisco
_BIN='/opt/cisco/anyconnect/bin'
if [ -d "$_BIN" ]; then
	export PATH="$_BIN${PATH:+:$PATH}"
fi

# clear
alias cl='clear'

# common
alias commonsh='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/sh/common.sh"'

# coverage
alias open-cov='open .coverage/html/index.html'

# crontab
alias crontab='crontab -i'

# direnv
if [ -x "$(command -v direnv)" ]; then
	alias dea='direnv allow'
fi

# docker
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
	export DOCKER_BUILDKIT=1
fi

# dropbox
set -- "$HOME" "/data/derek"
for _ROOT; do
	_DIR="$_ROOT/Dropbox"
	if [ -d "$_DIR" ]; then
		alias cddb='cd $PATH_DROPBOX'
		export PATH_DROPBOX="$_DIR"
	fi
done

# dust
if [ -x "$(command -v dust)" ]; then
	alias du='dust'
	__du_n() { dust -d "0"; }
	du0() { __du_n 0; }
	du1() { __du_n 1; }
	du2() { __du_n 2; }
	du3() { __du_n 3; }
	__watch_du_n() { watch -d -n 0.1 --color -- dust -d "$@"; }
	wdu0() { __watch_du_n 0; }
	wdu1() { __watch_du_n 1; }
	wdu2() { __watch_du_n 2; }
	wdu3() { __watch_du_n 3; }
fi

# exa
if [ -x "$(command -v exa)" ]; then
	__exa_base() { exa -F --group-directories-first "$@"; }
	__exa_long() { __exa_base -ghl --git --time-style=long-iso "$@"; }
	l() { __exa_long -a --git-ignore "$@"; }
	lg() { __exa_long -a "$@"; }
	alias ll='l'
	__exa_short() { __exa_base -x "$@"; }
	ls() { __exa_short -a --git-ignore "$@"; }
	lsg() { __exa_short -a "$@"; }

	if [ -x "$(command -v watch)" ]; then
		__watch_exa_base() { watch -d -n 0.1 --color -- exa -F --color=always --group-directories-first "$@"; }
		__watch_exa_short() { __watch_exa_base -x "$@"; }
		wl() { __watch_exa_short -a --git-ignore "$@"; }
		wlg() { __watch_exa_short -a "$@"; }
		__watch_exa_long() { __watch_exa_base -ghl --git --time-style=long-iso "$@"; }
		wll() { __watch_exa_long -a --git-ignore "$@"; }
		wllg() { __watch_exa_long -a "$@"; }
	fi
fi

# fd
if [ -x "$(command -v fd)" ]; then
	alias fdd='fd --type=directory'
	alias fde='fd --type=executable'
	alias fdf='fd --type=file'
	alias fds='fd --type=symlink'
fi

# fzf
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
	. "$_FILE"
fi

# git
if [ -x "$(command -v git)" ]; then
	alias cdr='cd $(git rev-parse --show-toplevel)'
	alias gitconfig='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/git/config"'
	alias gitconfiglocal='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/git/config.local"'
	alias gitignore='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/git/ignore"'
	_ALIASES=$(git --list-cmds=alias)
	while IFS= read -r _ALIAS; do
		# shellcheck disable=SC2139,SC2140
		alias "g$_ALIAS"="git $_ALIAS"
	done <<EOF
$_ALIASES
EOF
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

# goenv
_DIR="${PATH_DOTFILES:-$HOME/dotfiles}/submodules/goenv"
if [ -d "$_DIR" ]; then
	export GOENV_ROOT="$_DIR"
	export PATH="$GOENV_ROOT/bin${PATH:+:$PATH}"
	eval "$(goenv init -)"
fi

# hyperfine
if [ -x "$(command -v hyperfine)" ]; then
	alias time='hyperfine'
fi

# multipass
if [ -x "$(command -v multipass)" ]; then
	alias mpl='multipass list'
	alias mplaunch='multipass launch -c 4 -m 4G -d 25G'
	alias mps='multipass shell'
fi

# neovim/LunarVim
if [ -x "$(command -v lvim)" ]; then
	alias n='lvim'
	alias configlua='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/lvim/config.lua"'
	export EDITOR='lvim'
elif [ -x "$(command -v nvim)" ]; then
	alias n='nvim'
	alias nvim-packer='nvim --headless -c "autocmd user packercomplete quitall" -c "packersync"'
	export editor='nvim'
fi

# npm
if [ -x "$(command -v npm)" ]; then
	alias npmrc='$EDITOR "$HOME/.npmrc"'
fi

# nvm
export NVM_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvm"
_FILE="$NVM_DIR/nvm.sh"
if [ -f "$_FILE" ]; then
	. "$_FILE"
fi

# path
alias echo-path='sed '"'"'s/:/\n/g'"'"' <<< "$PATH"'

# pip
alias pi='pip install'
alias pie='pip install --editable .'
alias piip='pip install ipython'
alias pijl='pip install jupyterlab jupyterlab-vim'
alias pipt='pip install pip-tools'
alias piup='pip install --upgrade pip'
alias plo='pip list --outdated'
alias pipconf='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/pip/pip.conf"'
alias pypirc='$EDITOR "$HOME/.pypirc"'

# pip-tools
alias psreq='pip install pip-tools && pip-sync requirements.txt requirements-dev.txt'

# postgres
alias pguser='sudo -i -u postgres'

# pre-commit
alias pcr='pre-commit run'
alias pca='pre-commit run -a'
alias pcrav='pre-commit run -av'
alias pci='pre-commit install'
alias pcau='pre-commit autoupdate'
alias pcaua='pre-commit autoupdate && pre-commit run -a'
alias pctr='pre-commit try-repo'
alias pctra='pre-commit try-repo -a'
alias pctrav='pre-commit try-repo -av'
alias pcui='pre-commit uninstall'

# ps
alias pst='ps -fLu "$USER"| wc -l'
if [ "$(command -v watch)" ]; then
	alias wpst='watch -d -n0.1 "ps -fLu \"$USER\" | wc -l"'
fi

# pyenv
_DIR="$HOME/.pyenv"
if [ -d "$_DIR" ]; then
	alias pyenv-install-with-brew='CC="$(brew --prefix gcc)/bin/gcc-12" pyenv install' # https://bit.ly/3KYPrc0
	export PYENV_ROOT="$_DIR"
fi

# pyright
if [ -x "$(command -v pyright)" ]; then
	alias pyr='pyright'
	alias pyrw='pyright -w'
fi

# python
alias hypothesis-ci='export HYPOTHESIS_PROFILE=ci'
alias hypothesis-debug='export HYPOTHESIS_PROFILE=debug'
alias hypothesis-default='export HYPOTHESIS_PROFILE=default'
alias hypothesis-dev='export HYPOTHESIS_PROFILE=dev'
alias pyprojecttoml='$EDITOR $(git rev-parse --show-toplevel)/pyproject.toml'
alias pyt='pytest'
alias pytco='pytest --co'
export HYPOTHESIS_PROFILE=dev
export PYTHONDONTWRITEBYTECODE=1
_FILE="${PATH_DOTFILES:-$HOME/dotfiles}/bin/pytest-aliases"
if [ -f "$_FILE" ]; then
	. "$_FILE"
fi

# ranger
if [ -x "$(command -v ranger)" ]; then
	alias r='ranger'
fi

# redis
export REDISCLI_HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/redis/history"
export REDISCLI_RCFILE="${XDG_CONFIG_HOME:-$HOME/.config}/redisclirc"

# restic
set -- "$HOME" "/data/derek"
for _ROOT; do
	_DIR="$_ROOT/restic"
	if [ -d "$_DIR" ]; then
		export RESTIC_REPOSITORY="$_DIR"
	fi
done

# rg
if [ -x "$(command -v rg)" ]; then
	alias grep='rg'
	export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME:-$HOME/.config}/ripgreprc"
fi

# rm
alias rmrf='rm -rf'

# ruff
if [ -x "$(command -v ruff)" ]; then
	alias rw='ruff --watch .'
fi

# sqlite3
export SQLITE_HISTORY="${XDG_CACHE_HOME:-$HOME/.cache}/sqlite/history"

# ssh
alias ssh-dw-pc='ssh derekwan.ddnsfree.com -t tmux a'

# starship
if [ -x "$(command -v starship)" ]; then
	alias starshiptoml='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/starship.toml"'
fi

# tmux
if [ -x "$(command -v tmux)" ]; then
	alias tmuxconf='$EDITOR "$HOME/.tmux.conf.local"'
	# export TERM='xterm-256color'
fi

# xdg
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

# zellij
if [ -x "$(command -v zellij)" ]; then
	alias zellijconfig='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/zellij/config.yaml"'
fi

# zoxide
if [ -x "$(command -v zoxide)" ]; then
	export _ZO_EXCLUDE_DIRS="/tmp/*"
	export _ZO_RESOLVE_SYMLINKS=1
fi
