#!/bin/bash

function isSingaporePublicHoliday() {
  TODAY=$(date +%Y-%m-%d)

  response=$(cat singapore_ph.json| jq --arg date "$TODAY" '[.[] | select(.date == $date)]')
  if [ "$response" = "[]" ]; then
    echo "false"
  else
    echo "true"
  fi
}

function isWeekend() {
  if [[ $(date +%u) -gt 5 ]]; then
    echo "true"
  else
    echo "false"
  fi
}
