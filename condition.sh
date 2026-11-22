#!/bin/bash

echo "please enter the marks"

read Marks

if [ $Marks -lt 35 ]; then
    echo "fail"
elif [ $Marks -lt 40 ]; then
    echo "Third class"
elif [ $Marks -lt 50 ]; then
    echo "Second class"
elif [ $Marks -lt 60 ]; then
    echo "First class"
else [ $Marks -lt 70 ];
    echo "Distinction"
fi 
echo "Program end"