#!/bin/bash

var1=10
var2=20
echo "($var1+$var2)"
echo "$(($var1+$var2))"

declare -i count=5
count=count+1

echo "the count is : $count"

FRUITS=("banana" "apple" "mango")

echo "${FRUITS[@]}"
