#!/bin/bash

check_string() {
  user_input=$1

  first_char=${user_input:0:1}
  last_char=${user_input: -1}

  if [ "$first_char" = "A" ] && [ "$last_char" = "Z" ]; then
    echo "The string '$user_input' starts with 'A' and ends with 'Z'."
  else
    echo "The string '$user_input' does not meet the specified conditions."
  fi
}

# Prompt user for input
read -p "Enter a string: " input_string

check_string "$input_string"
