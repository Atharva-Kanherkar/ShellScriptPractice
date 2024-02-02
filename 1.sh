#!/bin/bash

set_nth_bit() {
  num=$1
  bit_position=$2

  # Calculate the bitmask with the nth bit set
  bitmask=$((1 << bit_position))

  # Set the nth bit using bitwise OR
  result=$((num | bitmask))

  echo "Original number: $num"
  echo "Bit position to set: $bit_position"
  echo "Result after setting nth bit: $result"
}

# Example usage
number=7
nth_bit=2
set_nth_bit $number $nth_bit
