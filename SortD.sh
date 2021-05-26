#!/bin/bash -x
function computeUC2()
{
 val=$(($1+$2*$3))
 return $val
}

function computeUC3()
{
 val=$(($1*$2+$3))
 return $val
}

function computeUC4()
{
 val=$(($3+$1/$2))
 return $val
}

function computeUC5()
{
 val=$(($1%$2+$3))
 return $val
}
read -p "Enter value of a " a
read -p "Enter value of b " b
read -p "Enter value of c " c
echo $a $b $c
declare -A dict
computeUC2 $a $b $c
dict[UC2]=$?
computeUC3 $a $b $c
dict[UC3]=$?
computeUC4 $a $b $c
dict[UC4]=$?
computeUC5 $a $b $c
dict[UC5]=$?

declare -a arr
j=0
for ((i=2;i<6;i++))
do
	echo ${dict[UC$i]}
        arr[$j]=${dict[UC$i]}
	j=$(($j+1))
done
echo ${arr[@]}
declare -a arr1
arr1=($(echo ${arr[@]} | tr " " "\n" |sort -nr)) #Sort in descending order
echo ${arr1[@]}
