#!/usr/bin/env zsh

vi-increment(){ _vi-increment a }
vi-decrement(){ _vi-increment x }

fpath+="${0:h}"
autoload -Uz _vi-increment
zle -N vi-increment
zle -N vi-decrement
for m in vicmd viopp; do
	bindkey -M "$m" '^a' vi-increment
	bindkey -M "$m" '^x' vi-decrement
done
