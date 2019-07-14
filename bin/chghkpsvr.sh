#!/bin/bash
for fp in $( grep -rli --color=auto -e 'pgp.mit.edu:80' ) ; 
	do d=$(dirname ${fp}) && f=$(basename ${fp}) ;  
	echo cp -u $fp $fp.backup
	cp -u $fp $fp.backup
#	echo found mit in dir: $d and filename: $f ; 
done
