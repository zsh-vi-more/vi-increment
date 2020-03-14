#!/usr/bin/env zsh

fpath+=("${0:h}/functions")
autoload .vi-select-number

# test selection
for LBUFFER RBUFFER (
	'Text 0x0f0 before cursor' ' 001 after'
	'Text 0x0f0 before cursor' ' none after'
	$'Text\n0x0f0 before cursor' ' none after'
	'Test in cursor 0b101' '11 none after'
	'Test in cursor 0' 'xff'
	'1    ' 'nothing'
	'nothing' '   1'
); {
	BUFFER=$LBUFFER$RBUFFER
	CURSOR=$#LBUFFER
	local -i start=0 end=0 zero=0
	local base=
	.vi-select-number g
	print "$zero:${base:-dec}::$BUFFER[start,end]:"
}

