#!/bin/bash -x

read -p "Enter 1st Number" a
read -p "Enter 2nd Number" b
read -p "Enter 3rd Number" c


echo "Arithematic compute one is: $(($a+$b*$c))"


function ArithmaticCompute2()
{
echo "Arithmatic compute is :$(($a*$b+$c))"
} 

ArithmaticCompute2
