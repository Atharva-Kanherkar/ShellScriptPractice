#!/bin/bash

determine_grade() {
  marks=$1

  if [ $marks -ge 90 ] && [ $marks -le 100 ]; then
    echo "Grade: A"
  elif [ $marks -ge 80 ] && [ $marks -le 89 ]; then
    echo "Grade: B"
  elif [ $marks -ge 70 ] && [ $marks -le 79 ]; then
    echo "Grade: C"
  elif [ $marks -ge 60 ] && [ $marks -le 69 ]; then
    echo "Grade: D"
  else
    echo "Grade: F"
  fi
}

# Prompt user for input
read -p "Enter the student's marks: " student_marks

# Validate input as an integer
if [[ $student_marks =~ ^[0-9]+$ ]]; then
  determine_grade $student_marks
else
  echo "Invalid input. Please enter a valid integer for marks."
fi
