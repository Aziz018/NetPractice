#!/bin/bash

# Prompt the user to enter a decimal number in IP address format
read -p "Enter a decimal number (e.g., 192.168.1.1): " decimal_string

# Initialize an empty result variable
result=""

# Split the decimal string by dots
IFS='.' read -r -a sections <<< "$decimal_string"

# Iterate over each section
for section in "${sections[@]}"; do
  # Convert the decimal section to binary using `bc`
  binary_value=$(echo "obase=2; $section" | bc)
  
  # Check if the conversion was successful
  if [ $? -eq 0 ]; then
    # Pad binary values to ensure they are 8 bits
    padded_binary_value=$(printf "%08d" "$binary_value")
    
    # Append the binary value to the result
    if [ -z "$result" ]; then
      result="$padded_binary_value"
    else
      result="$result.$padded_binary_value"
    fi
  else
    echo "Error: Invalid decimal input in section '$section'"
    exit 1
  fi
done

# Output the result
echo "Binary value: $result"
