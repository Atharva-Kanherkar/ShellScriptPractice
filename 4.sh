#!/bin/bash

check_range() {
  number=$1

  if [ "$number" -ge 10 ] && [ "$number" -le 20 ]; then
    echo "$number is between 10 and 20 (inclusive)."
  else
    echo "$number is not between 10 and 20 (inclusive)."
  fi
}

# Example usage
input_number=15
check_range $input_number
