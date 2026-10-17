#!/bin/bash

# This script demonstrates a simple for loop in bash

# Loop through a list of numbers from 1 to 5
for i in {1..5}
do
  echo "Number: $i"
done

## Loop through a list of fruits
fruits=("apple" "banana" "cherry" "date")
for fruit in "${fruits[@]}"
do
  echo "Fruit: $fruit"
done    


#Loop through a list of files in the current directory
for file in *
do
  echo "File: $file"
done    

#Loop through a list of command line arguments
for arg in "$@"
do
  echo "Argument: $arg"
done

#Loop through different data types
for item in 1 "two" 3.0 "four"
do
  echo "Item: $item"
done
