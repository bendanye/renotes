#!/bin/bash

searchDir="./notes/tech"

files=($searchDir/*)
subdirectory_files=($searchDir/**/*)
files+=(${subdirectory_files[@]})

random_notes=$[$RANDOM % ${#files[@]}]
selected_note=${files[random_notes]}

selected_note="${selected_note:1}"

echo "Open \"https://github.com/bendanye/renotes/tree/main$selected_note\" and read it!"
