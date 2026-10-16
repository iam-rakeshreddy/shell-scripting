#!/bin/bash

#case statement

#Example: Check if a number is positive, negative, or zero using case statement

read -p "Enter a number: " num

case $num in
    [1-9]*)
        echo "The number is positive."
        ;;
    0)
        echo "The number is zero."
        ;;
    -*)
        echo "The number is negative."
        ;;
    *)
        echo "Invalid input."
        ;;
esac


#Example: Check if a character is a vowel or consonant using case statement

read -p "Enter a character: " char
case $char in
    [aeiouAEIOU])
        echo "The character is a vowel."
        ;;
    [bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ])
        echo "The character is a consonant."
        ;;
    *)
        echo "Invalid input."
        ;;
esac

#example: Check if a day is a weekday or weekend using case statement
read -p "Enter a day of the week: " day
case $day in
    "Monday" | "Tuesday" | "Wednesday" | "Thursday" | "Friday")
        echo "$day is a weekday."
        ;;
    "Saturday" | "Sunday")
        echo "$day is a weekend."
        ;;
    *)
        echo "Invalid input."
        ;;
esac

