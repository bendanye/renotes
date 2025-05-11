SCRIPT_DIR=$( dirname -- "$0"; )

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

source $SCRIPT_DIR/day.sh
source $SCRIPT_DIR/blockdate.sh

isSingaporePublicHoliday=$(isSingaporePublicHoliday)
isWeekend=$(isWeekend)
isBlocked=$(isBlockedDate)

if [[ $isBlocked == "true" ]]; then
    echo "DO_NOTHING"
elif [[ $isSingaporePublicHoliday == "true" || $isWeekend == "true" ]]; then
    result=$(random $1)
    echo "Open \"$result\" and read it!"
else
    echo "DO_NOTHING"
fi