#!/bin/bash

source="[source](https://github.com/ryumingi)"

# Generate tree representation of the directory w/ hyperlink
tree=$(tree -tf --noreport -I '*~' --charset ascii $1 |
       sed -e 's/| \+/  /g' -e 's/[|`]-\+/ */g' -e 's:\(* \)\(\(.*/\)\([^/]\+\)\):\1[\4](\2):g')

printf "${source}\n${tree}" > README.md

sed -i '/README.md/d' README.md
