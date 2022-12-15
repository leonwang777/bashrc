#!/bin/bash
# To find but exclude files from specified pattern and replace the filename with new fileanme
# [Usage:] findreplace.sh path exclude_files_pattern old_str_pattern new_str


if [ $# -lt 5 ]; then
    echo  run $0 $*
	grep -rl --color=auto $1 -e $3 | grep -v $2 | xargs -r sed -s -i.old -e "s/$3/$4/g"
#	grep -rl $3 $1  | grep -v $2 | xargs -r sed -s -i.old -e "s/$3/$4/g"
else
	echo Error: $0 $@
	echo "[Usage:] findreplace.sh path exclude_files_pattern old_str_pattern new_str"
fi
#	grep -rli --color=auto $1 -e $2  | sed -i 's/$2/$3/g'
# for fp in $( grep -rli --color=auto 'pgp.mit.edu:80' ) ; do d=$(dirname ${fp}) && f=$(basename ${fp}) ;  echo found mit in dir: $d and filename: $f ; done
