SCRIPT_DIR=$( dirname -- "$0"; )

source $SCRIPT_DIR/random.sh
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