#!/bin/bash

function linkFile {
    source="${PWD}/$1"
    target="${HOME}/${1/_/.}"

    # Only create backup if target is a file or directory
    if [ -f "${target}" ] || [ -d "${target}" ]; then
        mv -v "$target" "$target.bak"
    fi

    ln -svf "${source}" "${target}"
}

for i in _*
do
  linkFile "$i"
done