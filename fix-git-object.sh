#!/bin/bash
# Fixes corrupt git objects directory
# Source: https://stackoverflow.com/questions/11706215/how-to-fix-git-error-object-file-is-empty

if [ -z "$1" ]; then
	echo "Usage: $0 </path/to/repo>"
	echo "Example: $0 ~/my-project"
	exit
fi

cd "$1"
cp -a .git .git-old
find .git/objects/ -type f -empty | xargs rm
git fetch -p
git fsck --full
