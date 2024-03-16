SCRIPT_DIR=$( dirname -- "$0"; )

source $SCRIPT_DIR/random.sh

function log() {
    START=$(date +%s)
    START_FORMATTED=$(date -r $START '+%Y-%m-%d %H:%M:%S')
    echo "$START_FORMATTED,$1" > random.log
}

result=$(random $1)

log $result

open  -a "Google Chrome" $result