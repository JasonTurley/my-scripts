#!/bin/bash
# Fixes corrupt git objects directory
# Source: https://stackoverflow.com/questions/11706215/how-to-fix-git-error-object-file-is-empty

cd "$1"
cp -a .git .git-old
find .git/objects/ -type f -empty | xargs rm
git fetch -p
git fsck --full
