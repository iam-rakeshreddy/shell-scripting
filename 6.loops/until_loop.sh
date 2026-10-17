#!/bin/bash

#until loop
counter=1
until [ $counter -gt 5 ]
do
  echo "Number: $counter"
  let counter=counter+1         #((counter++)) can also be used
done    


# Loop through a list of fruits
fruits=("apple" "banana" "cherry" "date")
index=0
until [ $index -ge ${#fruits[@]} ]
do
  echo "Fruit: ${fruits[$index]}"
  let index=index+1
done        

