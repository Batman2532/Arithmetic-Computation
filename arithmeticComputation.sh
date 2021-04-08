#!/bin/bash 

read -p "Enter values fro a, b & c:" a b c
declare -A compute
compute["a+b*c"]=$(( $a + ($b  * $c )))
compute["a*b+c"]=$((( $a * $b ) + $c ))
compute["c+a/b"]=$(( $c + ( $a  / $b )))
compute["a%b+c"]=$((( $a % $b ) +  $c ))
a=0
for key in "${!compute[@]}";
do
	array[((a++))]=$((compute[$key]))
done

for ((i=0; i<4; i++))
do
	for ((j=0; j<4-i-1;i++))
	do
		if [ ${array[j]} -gt ${array[$((j+1))]} ]
        then
            temp=${array[j]}
            array[$j]=${array[$((j+1))]}  
            array[$((j+1))]=$temp
        fi
    done
done
echo ${array[@]}

