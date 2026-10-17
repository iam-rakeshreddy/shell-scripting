#!/bin/bash

# Function to calculate the square of a number
function square() {
  local num=$1
  echo $((num * num))
}

#Another way to define a function
greet() {
  local name=$1
  echo "Hello, $name!"
}

#To call the greet function
greet "Alice"


#To call the function and get the square of a number
result=$(square 5)
echo "The square of 5 is: $result"


#Arguments in functions

welcome() {
  local first_name=$1
  local last_name=$2
  echo "Welcome, $first_name $last_name!"
}

#To call welcome function with arguments
welcome "John" "Doe"

