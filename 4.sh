 #!/bin/bash

check_range() {
  number=$1

  if [ "$number" -ge 10 ] && [ "$number" -le 20 ]; then
    echo "$number is between 10 and 20 (inclusive)."
  else
    echo "$number is not between 10 and 20 (inclusive)."
  fi
}

read a 

input_number=$a
check_range $input_number
