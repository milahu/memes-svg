#!/usr/bin/env bash

cd "$(dirname "$0")"

{

  echo "# memes-svg"
  echo

  find . -iname '*.svg' | LANG=C sort | while read svg; do
    svg="${svg:2}" # remove "./" prefix
    echo "## $svg"
    echo "[![]($svg)]($svg)" | sed 's/ /%20/g'
    echo
  done

} >readme.md
