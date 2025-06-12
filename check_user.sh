#!/bin/bash

echo "Enter user to check : "
read user

if grep -q "$user" /etc/passwd; then
    echo "User : $user exists"
else
    echo "User : $user doesn't exists"
fi
