#!/bin/bash

#you can pass arguments while running script file
#like ./script-args.sh arg1 arg2 arg3

#Arguments passed to a script
echo "The first argument is: $1"
echo "The second argument is: $2"
echo "The third argument is: $3"

#To get the total number of arguments passed to the script
echo "Total number of arguments: $#"

#To access all the arguments passed to the script
echo "All arguments: $@"

#To loop through all the arguments passed to the script
for arg in "$@"; do
  echo "Argument: $arg"
done

