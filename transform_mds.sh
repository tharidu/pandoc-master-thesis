#!/bin/bash
FILES="./chapters/*.md"
regex="^.*\/chapters\/(.*)\.md$"

if [[ ! -z "$1" ]]; then
  FILES=($1)
fi

for f in $FILES
do
  if [[ $f =~ $regex ]]
    then
        name="${BASH_REMATCH[1]}"
        pandoc --listings --natbib --number-sections -F pandoc-crossref -M "crossrefYaml=pandoc-crossref.yaml" -f markdown -t latex $f -S -o ./chapters-tex/${name}.tex
        # sed -i 's_\includegraphics{_\includegraphics[width=\\linewidth]{_g' ./chapters/${name}.tex
        echo "Transformed ${name}..."
    else
        echo "$f doesn't match" >&2
    fi
done
