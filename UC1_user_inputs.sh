#!/bin/bash -x

read -p "Enter 1st Number" a
read -p "Enter 2nd Number" b
read -p "Enter 3rd Number" c

function ArithmaticCompute1()
{
echo "$(($a+$b*$c))"
}

result[$((count++))]="$(ArithmaticCompute1 $(($a,$b,$c)))"

function ArithmaticCompute2()
{
echo "$(($a*$b+$c))"
} 
result[$((count++))]="$(ArithmaticCompute2 $(($a,$b,$c)))"

function ArithmaticCompute3()
{
echo "$(($c+$a/$b))"
}
result[$((count++))]="$(ArithmaticCompute3 $(($a,$b,$c)))"

function ArithmaticCompute4()
{
echo "$(($a%$b+$c))"
}
result[$((count++))]="$(ArithmaticCompute4 $(($a,$b,$c)))"



echo "${result[@]}"
echo "${!result[@]}"
