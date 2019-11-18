#!/usr/bin/env zsh
# {{{ Handle fpath/$0
# ref: zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html#zero-handling
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"
if [[ $zsh_loaded_plugins[-1] != */vi-increment && -z $fpath[(r)${0:h}] ]]
then
    fpath+=( "${0:h}" )
fi
# }}}

.vi-increment(){ .vi-increment_ a }
.vi-decrement(){ .vi-increment_ x }

autoload -Uz .vi-increment_
zle -N vi-increment
zle -N vi-decrement
for m in vicmd visual; do
	bindkey -M "$m" '^a' vi-increment
	bindkey -M "$m" '^x' vi-decrement
done
