#!/bin/bash

function random() {
    type="${1:-tech}"

    searchDir="./notes/$type"

    files=($searchDir/*.md)
    subdirectory_files=($searchDir/**/*.md)
    files+=(${subdirectory_files[@]})

    random_notes=$[$RANDOM % ${#files[@]}]
    selected_note=${files[random_notes]}

    selected_note="${selected_note:1}"

    echo "https://github.com/bendanye/renotes/tree/main$selected_note"
}
