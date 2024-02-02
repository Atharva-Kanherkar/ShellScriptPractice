#!/bin/bash

is_valid_ipv4() {
  ipv4_address=$1
  valid=true

  # Split the string into octets
  IFS='.' read -r -a octets <<< "$ipv4_address"

  # Check the number of octets
  if [ "${#octets[@]}" -ne 4 ]; then
    valid=false
  else
    # Validate each octet
    for octet in "${octets[@]}"; do
      if ! [[ $octet =~ ^[0-9]+$ ]]; then
        valid=false
        break
      fi

      if [ "$octet" -lt 0 ] || [ "$octet" -gt 255 ]; then
        valid=false
        break
      fi
    done
  fi

  if [ "$valid" = true ]; then
    echo "The string '$ipv4_address' is a valid IPv4 address."
  else
    echo "The string '$ipv4_address' is not a valid IPv4 address."
  fi
}

# Example usage
read -p "Enter an IPv4 address: " input_ipv4
is_valid_ipv4 "$input_ipv4"
