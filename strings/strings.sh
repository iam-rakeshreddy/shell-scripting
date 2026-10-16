#!/bin/bash

myvar="Hello, World!"

# Print the value of myvar
echo "The value of myvar is: $myvar"

#string operations

# Get the length of the string
length=${#myvar}
echo "The length of myvar is: $length"

# Convert to uppercase
uppercase=${myvar^^}
echo "Uppercase: $uppercase"

# Convert to lowercase
lowercase=${myvar,,}
echo "Lowercase: $lowercase"

# Extract a substring (from index 7, length 5)
substring=${myvar:7:5}
echo "Substring (from index 7, length 5): $substring"

# Replace a substring (replace "World" with "Bash")
replaced=${myvar/World/Bash}
echo "Replaced string: $replaced"

