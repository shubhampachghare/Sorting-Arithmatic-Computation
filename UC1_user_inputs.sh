#!/bin/bash -x

read -p "Enter 1st Number" a
read -p "Enter 2nd Number" b
read -p "Enter 3rd Number" c


echo "Arithematic compute one is: $(($a+$b*$c))"


function ArithmaticCompute2()
{
echo "Arithmatic compute two is :$(($a*$b+$c))"
} 

ArithmaticCompute2

function ArithmaticCompute3()
{
echo "Arithmatic compute three is :$(($c+$a/$b))"
}
ArithmaticCompute3


