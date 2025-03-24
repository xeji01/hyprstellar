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

case "$1" in
    *.png|*.jpg|*.jpeg|*gif) icat -w 100 "$1";;
    *.pdf) pdftotext "$1" -;;
    *.zip) zipinfo "$1";;
    *.tar.gz) tar -ztvf "$1";;
    *.tar.bz2) tar -jtvf "$1";;
    *.tar) tar -tvf "$1";;
    *) bat --color=always --style=plain --pager=never "$1" "$@";;
esac

pistol "$file"
