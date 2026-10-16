#!/bin/bash

#first approach
echo "Enter your favourite cricketer"
read fav_cricketer
echo "His favourite cricketer is $fav_cricketer"

#second approach  --read -p
read -p "Enter your name: " name

echo "Your name is: $name"

#input
#Enter your name: Rahul

#output
#Your name is: Rahul


#Third approach  --r option means raw input. It prevents read from treating backslashes as escape characters.
read -r -p "Enter a Windows path: " path

echo "Your path is: $path"

#input
#C:\Users\Rahul\Documents

#output  --backslash is not interpreted 

#Your path is: C:\Users\Rahul\Documents




