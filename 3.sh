#!/bin/bash

# Function to perform arithmetic operations with floating-point numbers
perform_operation() {
  num1=$1
  num2=$2
  operator=$3

  result=$(echo "$num1 $operator $num2" | bc -l)
  echo "Result: $result"
}

# Example usage
operand1=10.5
operand2=3.2
operation="+"

perform_operation $operand1 $operand2 $operation
