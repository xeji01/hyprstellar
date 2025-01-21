#!/usr/bin/env bash

file=$1
w=$2
h=$3
x=$4
y=$5

if [[ "$( file -Lb --mime-type "$file")" =~ ^image ]]; then
    kitty +kitten icat --silent --stdin no --transfer-mode file --place "${w}x${h}@${x}x${y}" "$file" < /dev/null > /dev/tty
    exit 1
fi

pistol "$file"
