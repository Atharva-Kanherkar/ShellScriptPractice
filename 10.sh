#!/bin/bash

is_palindrome() {
  number=$1

  # Check if the decimal representation is a palindrome
  decimal_representation=$(echo "$number" | tr -d '\n' | rev)
  if [ "$number" -eq "$decimal_representation" ]; then
    echo "Decimal representation is a palindrome."
  else
    echo "Decimal representation is not a palindrome."
  fi

  # Convert the number to binary and check if the binary representation is a palindrome
  binary_representation=$(echo "obase=2; $number" | bc)
  reversed_binary=$(echo "$binary_representation" | rev)
  if [ "$binary_representation" -eq "$reversed_binary" ]; then
    echo "Binary representation is a palindrome."
  else
    echo "Binary representation is not a palindrome."
  fi
}

# Example usage
read -p "Enter a number: " input_number

# Validate input as an integer
if [[ $input_number =~ ^[0-9]+$ ]]; then
  is_palindrome $input_number
else
  echo "Invalid input. Please enter a valid integer."
fi
