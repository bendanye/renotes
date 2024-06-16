#!/bin/bash

function isBlockedDate() {
    # Path to the JSON file
    json_file="blocked.json"

    # Get today's date
    today=$(date +%Y-%m-%d)

    # Function to check if a date is within a range
    date_in_range() {
        local date="$1"
        local start_date="$2"
        local end_date="$3"

        if [[ "$date" > "$start_date" && "$date" < "$end_date" ]] || [[ "$date" == "$start_date" ]] || [[ "$date" == "$end_date" ]]; then
            return 0
        else
            return 1
        fi
    }

    # Read the JSON file and extract the date ranges using jq
    blocked_dates=$(jq -c '.blocked_dates[]' "$json_file")

    # Check if today's date is within any of the blocked date ranges
    is_blocked="false"
    for date_range in $blocked_dates; do
        start_date=$(echo "$date_range" | jq -r '.start')
        end_date=$(echo "$date_range" | jq -r '.end')

        if date_in_range "$today" "$start_date" "$end_date"; then
            is_blocked="true"
            break
        fi
    done

    echo $is_blocked
}