#!/bin/bash
# Author: John Etchason
# 1/30/2019
# Script:
echo "Enter number: "
read numOne
echo "Enter second number: "
read numTwo
sum=$(($numOne + $numTwo))
echo "The sum: $sum"
let prod=numOne*numTwo
echo "The product: $prod"
echo "File Name: $0"
echo "Command Line argument 1: $1"
grep $1 $2
