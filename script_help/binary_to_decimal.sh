#!/bin/bash

# Prompt the user to enter a binary number in IP address format
read -p "Enter a binary number (e.g., 1010.1010.1010.100011): " binary_string

# Initialize an empty result variable
result=""

# Split the binary string by dots
IFS='.' read -r -a sections <<< "$binary_string"

# Iterate over each section
for section in "${sections[@]}"; do
  # Convert the binary section to decimal using `bc`
  decimal_value=$(echo "ibase=2; $section" | bc)
  
  # Check if the conversion was successful
  if [ $? -eq 0 ]; then
    # Append the decimal value to the result
    if [ -z "$result" ]; then
      result="$decimal_value"
    else
      result="$result.$decimal_value"
    fi
  else
    echo "Error: Invalid binary input in section '$section'"
    exit 1
  fi
done

# Output the result
echo "Decimal value: $result"
