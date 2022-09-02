#!/bin/bash

searchDir="./notes/tech"

files=($searchDir/*)
subdirectory_files=($searchDir/**/*)
files+=(${subdirectory_files[@]})

random_notes=$[$RANDOM % ${#files[@]}]
selected_note=${files[random_notes]}

echo "Open \"$selected_note\", read it!"
