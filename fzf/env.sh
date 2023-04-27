#!/usr/bin/env bash

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
