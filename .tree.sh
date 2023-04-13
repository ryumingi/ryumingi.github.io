#!/bin/bash

# Generate tree representation of the directory w/ hyperlink
tree=$(tree -tf --noreport -I '*~' --charset ascii $1 |
       sed -e 's/| \+/  /g' -e 's/[|`]-\+/ */g' -e 's:\(* \)\(\(.*/\)\([^/]\+\)\):\1[\4](\2):g')

printf "${tree}" > README.md

sed '/README.md/d' README.md > README.md
