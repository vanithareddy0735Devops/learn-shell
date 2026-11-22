#!/bin/bash

var1=10
var2=20
echo "($var1+$var2)"
echo "(($var1+$var2))"
echo "$($var1+$var2)"
echo "$(($var1+$var2))"

declare -i count=30
count=count+1

echo "the count is : $count"

