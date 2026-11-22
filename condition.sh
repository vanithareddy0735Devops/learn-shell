#!/bin/bash

echo "please enter the marks"

read Marks

if [ $Marks -lt 35]; then
    echo "fail"
elif [ $Marks -ls 40]; then
    echo "Third class"
elif [ $Marks -ls 50]; then
    echo "Second class"
elif [ $Marks -ls 60]; then
    echo "First class"
else [ $Marks -ls 70];
    echo "Distinction"
fi 
echo "Program end"