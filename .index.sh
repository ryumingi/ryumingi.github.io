#!/bin/bash

bookmarks="[bookmarks](bookmarks.md)"
posts="[posts](.posts)"
source="[source](https://github.com/ryumingi)"

# Generate tree representation of the directory w/ hyperlink
tree=$(tree -tf --noreport -I '*~' --charset ascii $1 |
       sed -e 's/| \+/  /g' -e 's/[|`]-\+/ */g' -e 's:\(* \)\(\(.*/\)\([^/]\+\)\):\1[\4](\2):g')

printf "${bookmarks}\n\n${posts}\n\n${source}\n\n${tree}" > README.md

sed -i '/\[README.md\]/d' README.md
sed -i '/\[bookmarks.md\]/d' README.md
