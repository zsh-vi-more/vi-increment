#!/usr/bin/env zsh

fpath+=("${0:h}/functions")
autoload .vi-increment::select-number

# test selection
for LBUFFER RBUFFER (
	'Text 0x0f0 before cursor' ' 001 after'
	'Text 0x0f0 before cursor' ' none after'
	$'Text\n0x0f0 before cursor' ' none after'
	'Test in cursor 0b101' '11 none after'
	'Test in cursor 0' 'xff'
	'1    ' 'nothing'
	'nothing' '   1'
	'' 'nothing 0xf'
	'::0123 before' 'nothing'
	'10 + 0xff +' ''
	'0' ''
	'-1' ''
); {
	BUFFER=$LBUFFER$RBUFFER
	CURSOR=$#LBUFFER
	local -i start=0 end=0 zero=0
	local base=
	local -a reply
	.vi-increment::select-number
	! (($#reply)) && return 1
	base=$reply[1]
	zero=$reply[2]
	start=$reply[3]
	end=$reply[4]
	printf '%1d: %4s [%3d,%3d]:[%s]\n' $zero ${base:-dec} $start $end $BUFFER[start,end]
}

