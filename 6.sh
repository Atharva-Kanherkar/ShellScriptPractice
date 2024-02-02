#!/bin/bash

sort_numbers() {
  num1=$1
  num2=$2
  num3=$3

  # Use the 'sort' command to sort the numbers in ascending order
  sorted_numbers=$(echo -e "$num1\n$num2\n$num3" | sort -n)

  echo "Sorted numbers in ascending order: $sorted_numbers"
}

# Prompt user for input
read -p "Enter the first number: " number1
read -p "Enter the second number: " number2
read -p "Enter the third number: " number3

sort_numbers "$number1" "$number2" "$number3"
