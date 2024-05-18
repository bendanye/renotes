SCRIPT_DIR=$( dirname -- "$0"; )

source $SCRIPT_DIR/random.sh
source $SCRIPT_DIR/day.sh

isSingaporePublicHoliday=$(isSingaporePublicHoliday)
isWeekend=$(isWeekend)

if [[ $isSingaporePublicHoliday == "true" || $isWeekend == "true" ]]; then
    result=$(random $1)
    echo "Open \"$result\" and read it!"
else
    echo "DO_NOTHING"
fi