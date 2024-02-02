 #!/bin/bash

# Function to perform arithmetic operations with floating point numbers
perform_operation() {
  echo "Enter two floating point numbers"
  read a b 
  echo "Addition : $(echo "$a + $b" | bc)"
  echo "Subtraction : $(echo "$a - $b" | bc)"
  echo "Multiplication : $(echo "$a * $b" | bc)"
  echo "Division : $(echo "scale=2; $a / $b" | bc)"
}

# Call the function
perform_operation
