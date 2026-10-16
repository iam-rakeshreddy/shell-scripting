#!/bin/bash

#Arithmetic operations
a=10
b=5

# Addition
sum=$((a + b))
echo "Sum: $sum"    

# Subtraction
difference=$((a - b))
echo "Difference: $difference"

# Multiplication
product=$((a * b))
echo "Product: $product"

# Division
quotient=$((a / b))
echo "Quotient: $quotient"

# Modulus
modulus=$((a % b))
echo "Modulus: $modulus"

# Increment and Decrement
((a++))
echo "After incrementing, a is: $a"
((b--))
echo "After decrementing, b is: $b"

# Comparison operations
if ((a > b)); then
    echo "a is greater than b"
elif ((a < b)); then
    echo "a is less than b"
else
    echo "a is equal to b"
fi

# Logical operations
if ((a > 0 && b > 0)); then
    echo "Both a and b are positive"
fi  

