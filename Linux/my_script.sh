#!/bin/bash
echo "type x and press enter"
read x
echo "type y and press enter"
read y
if [ $x -gt $y ]
then
echo "x is greater than y"
else
echo "y is greater than x "
fi
