#!/bin/bash -x
function computeUC2()
{
 val=$(($1+$2*$3))
 return $val
}

read -p "Enter value of a " a
read -p "Enter value of b " b
read -p "Enter value of c " c
echo $a $b $c
computeUC2 $a $b $c


