#!/bin/bash
[[ $# < 4 ]] && printf "Usage: $0 /path/to/source /path/to/dest exclude_dirs_pattern exclude_files_pattern\n" && exit 1
DIR_SOURCE=$1
DIR_DEST=$2
DIRS_EXCLUDE=$3
FILES_EXCLUDE=$4
# find $DIR_SOURCE -type d -not -name $DIR_EXCLUDE| cpio -pd $DIR_DEST/
# /rsync -a -f"- $DIR_EXCLUDE/" -f"+ */" -f"- *" $DIR_SOURCE $DIR_DEST

# Excluding some of the files and not all
printf  "rsync -a -f\"+ */\" -f\"- $DIRS_EXCLUDE/\" -f\"- $FILES_EXCLUDE\"  $DIR_SOURCE/ $DIR_DEST \n"
rsync -a -f"+ */" -f"- $DIRS_EXCLUDE/" -f"- $FILES_EXCLUDE" $DIR_SOURCE/ $DIR_DEST
