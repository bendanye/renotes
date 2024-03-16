SCRIPT_DIR=$( dirname -- "$0"; )

source $SCRIPT_DIR/random.sh

result=$(random $1)

echo "Open \"$result\" and read it!"