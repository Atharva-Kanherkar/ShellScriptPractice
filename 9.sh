#!/bin/bash

calculate_roots() {
  a=$1
  b=$2
  c=$3

  # Calculate the discriminant
  discriminant=$((b * b - 4 * a * c))

  # Check the discriminant to determine the nature of roots
  if [ $discriminant -gt 0 ]; then
    root1=$(echo "(-$b + sqrt($discriminant)) / (2 * $a)" | bc -l)
    root2=$(echo "(-$b - sqrt($discriminant)) / (2 * $a)" | bc -l)
    echo "Roots are real and different:"
    echo "Root 1: $root1"
    echo "Root 2: $root2"
  elif [ $discriminant -eq 0 ]; then
    root=$(echo "-$b / (2 * $a)" | bc -l)
    echo "Roots are real and identical:"
    echo "Root: $root"
  else
    real_part=$(echo "-$b / (2 * $a)" | bc -l)
    imaginary_part=$(echo "sqrt($((-1 * discriminant))) / (2 * $a)" | bc -l)
    echo "Roots are complex conjugates:"
    echo "Root 1: $real_part + i$imaginary_part"
    echo "Root 2: $real_part - i$imaginary_part"
  fi
}

# Prompt user for coefficients
read -p "Enter coefficient a: " coeff_a
read -p "Enter coefficient b: " coeff_b
read -p "Enter coefficient c: " coeff_c

# Validate input as integers
if [[ $coeff_a =~ ^[0-9-]+$ && $coeff_b =~ ^[0-9-]+$ && $coeff_c =~ ^[0-9-]+$ ]]; then
  calculate_roots "$coeff_a" "$coeff_b" "$coeff_c"
else
  echo "Invalid input. Please enter valid integer coefficients."
fi
