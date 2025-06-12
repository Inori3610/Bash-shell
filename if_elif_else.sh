#!/bin/bash

echo "Enter a : "
read a
echo "Enter b : "
read b

if [ "$a" -eq "$b" ]; then
    echo "a is equal to b"
elif [ "$a" -gt "$b" ]; then
    echo "a id greater than b"
else
    echo "a is little than b"
fi
