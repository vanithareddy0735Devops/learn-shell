#!/bin/bash

StartTime=$(date +%s)
echo "script started at the time $StartTime"
 sleep 10

EndTime=$(date +%s)
echo "script completed at the time $EndTime"

TotalTime= $($EndTime-$StartTime)

echo "total timetaken is $TotalTime"
