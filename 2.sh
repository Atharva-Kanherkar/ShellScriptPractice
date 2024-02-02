#!/bin/bash

find_max() {
  max=$1

  # Compare with the remaining numbers
  for num in "$@"; do
    if [ "$num" -gt "$max" ]; then
      max=$num
    fi
  done

  echo "Maximum number: $max"
}

# Example usage
num1=10
num2=25
num3=18
num4=32

find_max $num1 $num2 $num3 $num4
