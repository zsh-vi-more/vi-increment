#!/usr/bin/env zsh

.vi-increment(){ .vi-increment_ a }
.vi-decrement(){ .vi-increment_ x }

fpath+="${0:h}"
autoload -Uz .vi-increment_
zle -N vi-increment
zle -N vi-decrement
for m in vicmd visual; do
	bindkey -M "$m" '^a' vi-increment
	bindkey -M "$m" '^x' vi-decrement
done
