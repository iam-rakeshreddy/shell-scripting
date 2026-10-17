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


#Iterate values from File
#Example: items.txt contains names like apple, banana, cherry, date

items=$(cat items.txt)
for item in $items
do
  echo "Item from file: $item"
done

#output: Item from file: apple
#         Item from file: banana
#         Item from file: cherry
#         Item from file: date


#Loop through an array of multiple data types
mixed_array=(1 "two" 3.0 "four" "five")
for element in "${mixed_array[@]}"
do
  echo "Element: $element"
done