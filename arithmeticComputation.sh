#!/bin/bash -x

read -p "Enter values fro a, b & c:" a b c
echo "first compute: " $(( $a + ($b  * $c )))
echo "second compute: "$((( $a * $b ) + $c ))
echo "third compute: "$(( $c + ( $a  / $b )))
echo "third compute: "$((( $a % $b ) +  $c ))
