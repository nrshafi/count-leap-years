#!/bin/bash

read -p "Enter starting year: " start
read -p "Enter ending year: " end

count=0

echo "Leap Years Between $start and $end:"

for ((y=start; y<=end; y++))
do
    if (( (y % 400 == 0) || (y % 4 == 0 && y % 100 != 0) ))
    then
        echo $y
        count=$((count+1))
    fi
done

echo "Total Leap Years: $count"
