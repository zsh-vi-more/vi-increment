#!/usr/bin/env zsh
# {{{ Handle fpath/$0
# ref: zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html#zero-handling
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"
if [[ $zsh_loaded_plugins[-1] != */vi-increment && -z $fpath[(r)${0:h}/functions] ]]
then
    fpath+=( "${0:h}/functions" )
fi
# }}}

autoload -Uz .vi-increment{,::select-number}
zle -N vi-increment .vi-increment
zle -N vi-decrement .vi-increment
for m in vicmd visual; do
	bindkey -M "$m" '^a' vi-increment
	bindkey -M "$m" '^x' vi-decrement
done
