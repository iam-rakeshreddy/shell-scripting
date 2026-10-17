#!/bin/bash

#Array declaration
my_array=("apple" "banana" "cherry" "date")

#Array with mixed data types
mixed_array=("Hello" 42 3.14 "World")


# Print the entire array
echo "The entire array is: ${my_array[@]}"
echo "The mixed array is: ${mixed_array[@]}"

# Get the length of the array
length=${#my_array[@]}
echo "The length of the array is: $length"


# Access individual elements
echo "The first element is: ${my_array[0]}"
echo "The second element is: ${my_array[1]}"

# Add an element to the array
my_array+=("elderberry")
echo "After adding an element, the array is: ${my_array[@]}"

# Remove an element from the array (remove "banana")
unset my_array[1]
echo "After removing an element, the array is: ${my_array[@]}"

# Iterate over the array
echo "Iterating over the array:"
for fruit in "${my_array[@]}"; do
    echo "$fruit"
done    

