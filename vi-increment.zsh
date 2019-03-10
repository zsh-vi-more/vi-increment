#!/usr/bin/env zsh
autoload -Uz vi-increment
zle -N vi-increment
for m in vicmd viopp; do
	bindkey -M "$m" '^a' vi-increment
	bindkey -M "$m" '^x' vi-increment
done
