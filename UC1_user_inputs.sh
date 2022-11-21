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

for (( i=0; i<4; i++ ))
do
      arr[i]=${result[$i]}
      echo "${arr[i]}"
done

function sorting_Array_in_Decending_Order()
{
    for (( i=0; i<4; i++ ))
    do
       for (( j=$i+1; j<4; j++ ))
       do
          if [[ ${arr[i]} -lt ${arr[j]} ]]
          then
               temp=${arr[i]}
               arr[i]=${arr[j]}
               arr[j]=$temp
          fi
       done
    done
    echo ${arr[@]}
}

res="$( sorting_Array_in_Decending_Order ${arr[@]} )"
echo "decending order is : $res"


function sorting_Array_in_Ascending_Order()
{
    for (( i=0; i<4; i++ ))
    do
       for (( j=$i+1; j<4; j++ ))
       do
          if [[ ${arr[i]} -gt ${arr[j]} ]]
          then
               
               arr[i]=${arr[j]}
               arr[j]=$temp
          fi
       done
    done
    echo ${arr[@]}
}

res1="$( sorting_Array_in_Ascending_Order ${arr[@]} )"
echo "Ascending order is : $res1"
