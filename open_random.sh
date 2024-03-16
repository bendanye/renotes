SCRIPT_DIR=$( dirname -- "$0"; )

source $SCRIPT_DIR/random.sh

result=$(random $1)

open  -a "Google Chrome" $result