#!/bin/bash

##
## Uninstalls the scripts from $HOME by removing the symlinks.
##

sourceDir="src/_*"

##
## Removes link from target directory.
##
## @param $1 source script
## @param $2 target direcotry
##
function unlinkFile {
    targetFile="${1/src\//}"
    target="${1/_/.}"
    target="${2}/${targetFile}"

    rm -v "${target}"
}

for file in sourceDir
do
  linkFile "${file}" "${HOME}"
done

echo "Finished :)"
