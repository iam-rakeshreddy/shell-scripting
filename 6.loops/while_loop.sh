#!/bin/bash

counter=1
while [ $counter -le 5 ]
do
  echo "Number: $counter"
  let counter=counter+1         #((counter++)) can also be used
done


# Loop through a list of fruits
fruits=("apple" "banana" "cherry" "date")
index=0
while [ $index -lt ${#fruits[@]} ]
do
  echo "Fruit: ${fruits[$index]}"
  let index=index+1
done    


#infinite loop
while true
do
  echo "This is an infinite loop. Press Ctrl+C to stop."
  sleep 1
done    

