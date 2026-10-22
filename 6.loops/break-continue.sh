#!/bin/bash

#break statement is used to exit from the loop
for i in {1..10}; do
  if [ $i -eq 5 ]; then
    echo "Breaking the loop at i=$i"
    break
  fi
  echo "i=$i"
done

#continue statement is used to skip the current iteration of the loop and continue with the next iteration
for i in {1..10}; do
  if [ $i -eq 5 ]; then
    echo "Skipping the iteration at i=$i"
    continue
  fi
  echo "i=$i"
done
